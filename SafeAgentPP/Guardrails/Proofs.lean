import SafeAgentPP.Guardrails.Labels
import SafeAgentPP.Guardrails.Actions
import SafeAgentPP.Guardrails.Policy
import SafeAgentPP.MultiAgent.Agent
import SafeAgentPP.MultiAgent.Interaction

-- CI fix trigger

theorem no_secret_to_public_agent
  (d : Data) (a : Agent) :
  d.label = Label.Secret →
  a.trustLevel = Label.Public →
  ¬ safeInteraction a d := by
  intro h1 h2
  unfold safeInteraction
  simp [h1, h2, allowedFlow]