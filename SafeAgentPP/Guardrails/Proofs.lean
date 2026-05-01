import SafeAgentPP.Guardrails.Flow

theorem no_secret_leak (d : Data) :
  d.label = Label.Secret → ¬ isSafeSend d := by
  intro h
  unfold isSafeSend
  simp [allowedFlow, h]