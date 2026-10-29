/-
InstructionsAndOneStep
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 2a841839c5ea83070e970887250bcb30d0fe3001f6588aa99f7f8ee86058c753
Organized SHA-256: 44133c05dd0de043677b9ffb35731f021988c3b23ef2e0f03b04be8b2d25bca0
PMD: 510.7.120 theoretical algorithms (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- All14 Operation constructors, Fin(2^32) immediate, fixed32/65536 constants, complete stack-depth and stack-value branches remain exact. List-head stack orientation and right-before-left binary pop order are retained. These are mathematical functions, not effectful process execution. -/

import BitMatrix.Carrier.BooleanSpace

/-!
# Bounded fixed-program interpreter semantics

This module gives an exact operational semantics for the *decoded* instruction
profile used by the separately fixed local interpreter.  The carrier decoder is
an explicit capability: this file does not identify Lean states with Rust
trait objects, byte vectors, the Rust parser, or its little/MSB-endian wire
format.  Such a byte-level correspondence requires a separate representation
relation and conformance evidence.

The distinction that matters here is semantic and kernel checked.  A checked
decoder/interpreter rejects malformed program states with `none`; its totalized
counterpart maps precisely that rejected branch to the all-false state.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PureDecodedStackSemantics.Variant2a841839c5ea8307

open BitMatrix.Carrier

/-- The carrier-state domain used by the fixed interpreter profile. -/
abbrev State := BooleanState Nat

/-- The all-false carrier state used to totalize decoder failure. -/
def zeroState : State := fun _ => false

/-- Width of the program-length field in the concrete profile. -/
def programLengthBits : Nat := 32

/-- Maximum encoded program length accepted by the bounded profile. -/
def maxProgramBytes : Nat := 65_536

/-- Maximum operand-stack depth accepted by the bounded profile. -/
def maxStackDepth : Nat := 65_536

/-- A bit position admitted by the concrete 32-bit `INDEX_BIT` immediate. -/
abbrev IndexBitPosition := Fin (2 ^ programLengthBits)

/--
Decoded straight-line operations.  `return` remains an operation so that the
checker can require it to be final and to observe exactly one stack value.
-/
inductive Operation where
  | pushFalse
  | pushTrue
  | readSelf
  | readConst (address : Nat)
  | indexBit (position : IndexBitPosition)
  | not
  | xor
  | and
  | or
  | eq
  | dup
  | swap
  | drop
  | return
  deriving DecidableEq, Repr

/-- Static stack-depth transition for a non-return operation. -/
def nextStackDepth : Operation → Nat → Option Nat
  | .pushFalse, depth
  | .pushTrue, depth
  | .readSelf, depth
  | .readConst _, depth
  | .indexBit _, depth => some (depth + 1)
  | .not, 0 => none
  | .not, depth + 1 => some (depth + 1)
  | .xor, 0 | .xor, 1 => none
  | .xor, depth + 2 => some (depth + 1)
  | .and, 0 | .and, 1 => none
  | .and, depth + 2 => some (depth + 1)
  | .or, 0 | .or, 1 => none
  | .or, depth + 2 => some (depth + 1)
  | .eq, 0 | .eq, 1 => none
  | .eq, depth + 2 => some (depth + 1)
  | .dup, 0 => none
  | .dup, depth + 1 => some (depth + 2)
  | .swap, 0 | .swap, 1 => none
  | .swap, depth + 2 => some (depth + 2)
  | .drop, 0 => none
  | .drop, depth + 1 => some depth
  | .return, _ => none

/--
Execute one non-return operation.  The head of the list is the top of stack;
binary instructions pop the right operand before the left operand, matching
the decoded profile (the present Boolean binary operations are commutative).
-/
def executeOperation
    (operation : Operation)
    (input : State)
    (outputIndex : Nat)
    (stack : List Bool) : Option (List Bool) :=
  match operation, stack with
  | .pushFalse, stack => some (false :: stack)
  | .pushTrue, stack => some (true :: stack)
  | .readSelf, stack => some (input outputIndex :: stack)
  | .readConst address, stack => some (input address :: stack)
  | .indexBit position, stack =>
      some (outputIndex.testBit position.val :: stack)
  | .not, value :: rest => some ((!value) :: rest)
  | .xor, right :: left :: rest => some ((left != right) :: rest)
  | .and, right :: left :: rest => some ((left && right) :: rest)
  | .or, right :: left :: rest => some ((left || right) :: rest)
  | .eq, right :: left :: rest => some ((left == right) :: rest)
  | .dup, value :: rest => some (value :: value :: rest)
  | .swap, right :: left :: rest => some (left :: right :: rest)
  | .drop, _ :: rest => some rest
  | _, _ => none

end GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PureDecodedStackSemantics.Variant2a841839c5ea8307
