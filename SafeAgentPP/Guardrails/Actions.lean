import SafeAgentPP.Guardrails.Labels

structure Data where
  value : String
  label : Label
deriving Repr

inductive Action
| readSecret : Action
| process : Data → Action
| send : Data → Action
deriving Repr