import SafeAgentPP.Guardrails.Actions
import SafeAgentPP.Guardrails.Policy
import SafeAgentPP.MultiAgent.Agent

-- Example secret data (like API key)
def secretData : Data :=
{ value := "API_KEY_123", label := Label.Secret }

-- Public agent (low trust)
def publicAgent : Agent :=
{ name := "PublicBot", trustLevel := Label.Public }

-- Secure agent (high trust)
def secureAgent : Agent :=
{ name := "SecureBot", trustLevel := Label.Secret }

-- Test interactions
#eval safeInteraction publicAgent secretData   -- should be false ❌
#eval safeInteraction secureAgent secretData   -- should be true ✅