import SafeAgentPP.Guardrails.Labels

structure Data where
  value : String
  label : Label
deriving Repr   -- ONLY Repr (no ToString)

inductive Action
| readSecret : Action
| process : Data → Action
| send : Data → Action
deriving Repr