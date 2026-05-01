import SafeAgentPP.Guardrails.Actions
import SafeAgentPP.Guardrails.Policy
import SafeAgentPP.MultiAgent.Agent

def safeInteraction (a : Agent) (d : Data) : Prop :=
  allowedFlow d.label a.trustLevel