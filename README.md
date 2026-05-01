# SafeAgentPP

Proving that secrets never leak in multi-agent AI systems — by construction, not testing.

> Formal verification of non-interference and safe information flow in multi-agent AI systems using Lean.

---

## Origin

This project was built during the **LeanLang for Verified
Autonomy Hackathon** (April 17–18 + online through May 1,
2026) at the **Indian Institute of Science (IISc),
Bangalore**.
Sponsored by **Emergence AI**
Organized by **[Emergence India Labs](https://east.emergence.ai)** in collaboration with **IISc Bangalore**.

---

## 🔥 Key Contributions

SafeAgent++ is a formally verified guardrail framework for multi-agent systems using Lean.

We provide mathematical guarantees for:

* **No Secret Leakage** — sensitive data cannot flow to public outputs
* **Non-Interference** — secret data does not influence public behavior
* **Safe Multi-Agent Communication** — interactions respect trust levels

Unlike heuristic guardrails, our approach provides **provable safety guarantees** using theorem proving.

---

### 🧠 Core Idea

We model information flow using security labels and prove that unsafe flows are impossible using Lean's theorem prover.

---

## ⚙️ Build Instructions

```bash
lake build
```

---

## ⚠️ Note

This project focuses on formal verification of agentic safety properties using Lean.

---

## 🚀 Real-World Impact

Modern AI agent systems can leak sensitive data through indirect interactions.

SafeAgent++ prevents:

* 🔐 API key leakage (e.g., sending secrets to public agents)
* 🧠 Prompt injection attacks that expose hidden data
* 🔄 Unsafe multi-agent communication chains

---

## 🧪 Example

A secret API key:

```
API_KEY_123
```

cannot be sent to a public agent:

```lean
#eval safeInteraction publicAgent secretData  -- false
```

This behavior is guaranteed by formal proofs in Lean, ensuring correctness across all possible executions.

---

## Acknowledgments

This project was made possible by:

* **Emergence AI** — Hackathon sponsor
* **Emergence India Labs** — Event organizer and research direction
* **Indian Institute of Science (IISc), Bangalore** — Academic partner, hackathon co-design, tutorials, and mentorship

---

## Links

* [Hackathon Page](https://east.emergence.ai/hackathon-april2026.html)
* [Emergence India Labs](https://east.emergence.ai)
* [Emergence AI](https://www.emergence.ai)
