-- lean/cognition/Agents/CognitiveAgent.lean
import cognition.Core.UserInputEvent
import cognition.Core.CognitiveState
import cognition.Dialogue.DialogueContext
import cognition.Agents.FlowProfile

namespace Cognition.Agents

/--
A `CognitiveAgent` is a stateful cognitive entity that:
- perceives user input,
- decides whether to respond,
- generates a plan,
- critiques flow alignment,
- and acts on a plan.

This trait allows for composable, swappable GPT-like agents.
-/
class CognitiveAgent (α : Type) where
  /-- Perceive an external user input and possibly mutate internal state. -/
  perceive : α → UserInputEvent → α

  /-- Determine if the agent is in a mode where it should respond. -/
  shouldRespond : α → Bool

  /-- Generate a plan (text) given a user prompt and optional dialogue context. -/
  plan : α → (prompt : String) → (ctx : Option DialogueContext) → (thread : Option String) → Option String

  /-- Critique the current dialogue flow versus a target profile.
      Returns a possibly compressed dialogue context and similarity score. -/
  critiqueFlow : α → DialogueContext → FlowProfile → Option (DialogueContext × Float)

  /-- Perform an action based on a plan, producing output text. -/
  act : α → (plan : String) → Option String

end Cognition.Agents
