DefinitionBlock("", "SSDT", 2, "hack", "PRW0D6D", 0)
{
  External(GPRW, MethodObj)
  Scope (_SB)
  {
    Method (PPPW, 2, NotSerialized)
    {
      If (_OSI ("Darwin")) {
        // 如果是苹果且为 0D/6D 跳过休眠
        If ((0x6D == Arg0)) {
          Return (Package () {
            0x6D,
            Zero
          })
        }

        If ((0x0D == Arg0)) {
          Return (Package () {
            0x0D,
            Zero
          })
        }
      }
      // 跳过
      Return (GPRW (Arg0, Arg1))
    }
  }

  // 关闭掉网线唤醒
  External(_SB.PCI0.GLAN, DeviceObj)
  If (CondRefOf (\_SB.PCI0.GLAN))
  {
    Scope (_SB.PCI0.GLAN)
    {
      Method (_PRW, 0, NotSerialized)
      {
        Return (\_SB.PPPW(0x6D, 0x04))
      }
    }
  }

  // 关闭掉 USB 唤醒
  External(_SB.PCI0.XHC, DeviceObj)
  If (CondRefOf (\_SB.PCI0.XHC)) {
    Scope (_SB.PCI0.XHC)
    {
      Method (_PRW, 0, NotSerialized)
      {
        Return (\_SB.PPPW(0x6D, 0x04))
      }
    }
  }

  // 主板扩展总线唤醒（大概是 PCI 之类的？）
  External(_SB.PCI0.XDCI, DeviceObj)
  If (CondRefOf (\_SB.PCI0.XDCI)) {
    Scope (_SB.PCI0.XDCI)
    {
      Method (_PRW, 0, NotSerialized)
      {
        Return (\_SB.PPPW(0x6D, 0x04))
      }
    }
  }

  // 音频唤醒
  External(_SB.PCI0.HDAS, DeviceObj)
  If (CondRefOf (\_SB.PCI0.HDAS))
  {
    Scope (_SB.PCI0.HDAS)
    {
      Method (_PRW, 0, NotSerialized)
      {
        Return (\_SB.PPPW(0x6D, 0x04))
      }
    }
  }
}
