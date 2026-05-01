import SafeAgentPP.Guardrails.Actions

def secretData : Data :=
  { value := "API_KEY_123", label := Label.Secret }

#eval secretData