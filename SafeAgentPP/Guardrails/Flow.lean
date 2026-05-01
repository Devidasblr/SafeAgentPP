import SafeAgentPP.Guardrails.Policy

def isSafeSend (d : Data) : Prop :=
  allowedFlow d.label Label.Public