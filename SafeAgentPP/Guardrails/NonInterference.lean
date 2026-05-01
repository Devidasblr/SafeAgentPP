import SafeAgentPP.Guardrails.Actions
import SafeAgentPP.Guardrails.Actions
import SafeAgentPP.Guardrails.Policy

def nonInterfering (d : Data) : Prop :=
  d.label = Label.Secret → ¬ allowedFlow d.label Label.Public

theorem secret_non_interference (d : Data) :
  nonInterfering d := by
  intro h
  unfold allowedFlow
  simp [h]