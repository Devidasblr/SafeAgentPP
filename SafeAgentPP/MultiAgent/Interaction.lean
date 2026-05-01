import SafeAgentPP.Guardrails.Actions
import SafeAgentPP.Guardrails.Policy
import SafeAgentPP.MultiAgent.Agent

def agentSend (a : Agent) (d : Data) : Prop :=
  allowedFlow d.label a.trustLevel