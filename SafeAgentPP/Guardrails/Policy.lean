import SafeAgentPP.Guardrails.Actions

def allowedFlow : Label → Label → Prop
| Label.Public, Label.Public => True
| Label.Secret, Label.Secret => True
| Label.Public, Label.Secret => True
| Label.Secret, Label.Public => False