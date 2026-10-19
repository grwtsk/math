-- lean/Cognition.lean
import cognition.Core.CognitiveMode
import cognition.Core.FlowRegion
import cognition.Core.CognitiveState
import cognition.Core.UserInputEvent
import cognition.Core.PerceptionEvent

import cognition.State.Transition
import cognition.State.StateMachine

import cognition.Dialogue.TurnAuthor
import cognition.Dialogue.DialogueTurn
import cognition.Dialogue.DialogueContext
import cognition.Dialogue.PromptFormat

import cognition.Agents.CognitiveAgent
import cognition.Agents.AgentPool
import cognition.Agents.FlowProfile

import cognition.Log.GraffitiKind
import cognition.Log.GraffitiEntry
import cognition.Log.GraffitiLog

import cognition.Runtime.RuntimeLoop

namespace Cognition

/-!
  # Cognition System (Verified Core)

  This module re-exports all core components of the cognitive-semantic runtime:
  - `Core`: finite state and event types
  - `State`: pure transition semantics
  - `Dialogue`: memory and bounded conversational context
  - `Agents`: composable GPT-like agents
  - `Log`: append-only trace log
  - `Runtime`: orchestrated cognition via event flow

  All definitions are formal, compositional, and verifiable in Lean.
-/

end Cognition
