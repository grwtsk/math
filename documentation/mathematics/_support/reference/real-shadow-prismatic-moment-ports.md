# Real-shadow prismatic moments and signed arithmetic ports

Local attribution: grwtsk contributors. Source construction dated 2026-10-31.

**SOURCE_CANDIDATE / COMPILATION_NOT_RUN / KERNEL_NOT_RUN / AXIOM_AUDIT_NOT_RUN.**
The event/compositor prototype has separate finite Chromium observations. A browser test does not verify Lean, and a mathematical port type does not authorize workflow execution or source mutation.

## Mathematical object and exact boundaries

A state space `State` carries a reversible transport `f`, specified inverse `f⁻¹`, involutive reflection `ρ` and a real-valued observation `s : State → ℝ`. The new `RealShadowMirror` record requires, rather than assumes by notation,

- `f⁻¹(f(x)) = x` and `f(f⁻¹(x)) = x`;
- `ρ(ρ(x)) = x` and `ρ(f(x)) = f⁻¹(ρ(x))`;
- `s(f(x)) = s(x)` and `s(ρ(x)) = s(x)`.

These equations give a dihedral-like real-shadow-preserving action. They are not general properties of every transform. The construction proves that `f⁻¹` also preserves the shadow and transports `f`, `f⁻¹` and `ρ` on the dependent fiber `s⁻¹(a)`. The existing `GRWTSK.Topology.PortFiber.ofFunctions` supplies identity and composition of these typed fibers. A reflection port retains the exact `SourceIdentity` and `invalidationKey` through the existing `SourceBoundPort` interface. Each selected typed carrier can carry a `PrimeTypedFiber` with an actual `Nat.Prime` witness and source/declaration/universe identity; a prime index is an address, not a replacement for Lean's dependent type.

Primary new source: `GRWTSK/MathematicalLogicAndFoundations/GeneralLogic/RealShadowMomentPort.lean` in namespace `GRWTSK.FoundationsLogicAndTypeTheory.RealShadowMomentPort`. Source dependency: `GRWTSK/MathematicalLogicAndFoundations/GeneralLogic/PortFiberBasic.lean`, whose previous inspected blob was `e51c1b52fede0d883b147ffd196c0efe184a87d8` on the current Math baseline. A true current compilation is still required to establish these declarations and their complete imported closure.

## Signed ordered Möbius pair counting

The companion `GRWTSK/NumberTheory/MultiplicativeNumberTheory/OrderedMobiusResidueMoment.lean` models a *specified* coefficient supplier `mu : ℕ → ℝ` and specified pickup response `pickup : ℕ → ℝ`, retaining the exact product

`mu(m) * mu(n) * pickup(m) * pickup(n)`

for every ordered off-diagonal pair `1 ≤ m,n ≤ N`, `m ≠ n`. The residue `a` is selected by `m ≡ n + a (mod q)`, for a positive modulus in the admitted consumer. The construction keeps **both** orientations and does not silently replace a signed sum with absolute values or discard the diagonal without recording the exclusion. `signedPairTerm_swap` supplies the algebraic symmetry of a single term. The source-bound difference of two residue sums is `sourceResidual`, and `sourceResidual_accounting` retains it exactly.

`ReflectedResiduePort` carries the explicit equality witness between `a` and `(-a mod q)`; **the general equality is a field to discharge**, not claimed proved solely from a visual reflection. `reflectedPort_zeroResidual` consumes that equality. The next mathematical bridge is a full finite swapped-pair reindexing theorem proving the witness for the actual symmetric cutoff and response, followed by a separately checked supplier bridge to the repository's *actual* Möbius and causal pickup definitions.

Existing relevant source anchors inspected:

- `GRWTSK/NumberTheory/ExactPickupWeightsForTheOriginalSignedMeterEdition1.lean`, containing `atomPickup`, `pickupWeight`, `realMoebius` usage and `diagonalEnergy`; it does not furnish this new browser implementation/refinement.
- `GRWTSK/NumberTheory/FareyResidueChannelDecomposition.lean`: exact residue strata retain unit **and nonunit** classes. An additive/multiplicative transport must keep nonunit residuals or produce a proved reduction.
- `GRWTSK/NumberTheory/MultiplicativeNumberTheory/FiniteModularResidueFibers.lean`: modular weighted sums are exact filtered finite sums, with `SOURCE_DRAFT / NOT_RUN` in the inspected source.
- `GRWTSK/GroupTheoryAndGeneralizations/FiniteResidualTelescope.lean`: signed residuals are canonical endpoint differences, not free cancellation allowances.
- `GRWTSK/GroupTheoryAndGeneralizations/AutomorphismAction.lean`: equivariance is an explicit commutation condition, not a label.
- `GRWTSK/Combinatorics/GlobalReflection.lean` and `GRWTSK/Combinatorics/BoundedPrismaticDiffusion.lean`: the former reflects explicit finite typed dependencies; the latter requires all legality gates before diffusion enters the admitted network.
- `GRWTSK/Combinatorics/FinitePrimeState.lean`: prime-local fibers carry primality and typed payload rather than using a bare hash in place of mathematical data.

None of these inspected sources demonstrates that a DOM virtualizer refines its Lean mathematics. That is a separate exact representation theorem and runtime test obligation. The local prototype computes actual finite Möbius values by trial factorization only for its small displayed range; it does not compute or bound the analytic signed pickup cross-energy needed by an RH return.

## Pure cache/viewport compaction law

`GRWTSK/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/PrismaticCacheAnchor.lean` adds a dependent `Representative` that stores the full value, a prismatic summary and the **required equality** between summary and encoding. `restore_compact` recovers the original value exactly; `viewportOffset_rebase` proves in integer coordinates that removing height before the anchor from both `documentTop` and `scrollTop` preserves the visible offset. The browser implementation must still be shown to refine the model, especially under variable font measurement, focus, accessibility navigation, missing backing data and interruptions. This source remains `NOT_RUN` for Lean.

## UI mathematical correspondence and caching contracts

A `Moment` is a stable source-bound cache entry with an immutable origin, revisioned workflow projection, port ledger, real shadow, signed pair/fiber residue and explicit verification status. `Rendered` and `PrismaticSummary` are two representation states of the **same** moment identifier. An offscreen summary must retain source revision, prime address, semantic summary, exact state digest and restoration capability. It cannot silently reinterpret the source, discard an unproved premise, or count an arbitrary graph edge as certified diffusion.

For a fixed viewport anchor `A`, stable ID and pixel offset `δ`, the compression operation must satisfy

`top_after(A) - viewport_top_after = δ = top_before(A) - viewport_top_before`

while all on-screen card content remains unchanged. The scroll container's absolute `scrollTop` **may change** to compensate for removed offscreen height. This is the intended scroll-coordinate compression. The browser prototype currently tests a midstream anchor with 0-pixel observed drift under the selected Chromium viewport; this is finite test evidence, not a proof across devices, fonts, accessibility modes or arbitrary user content.

The time lens is the explicit display map `λ(y) = 1 + 3(1 - y/H)^2` for `0 ≤ y ≤ H`, with `y=0` the top of the visible stream and `y=H` nearest the composer. It changes displayed temporal emphasis, not the mathematical clock or the ordering of events. The composer remains anchored to the bottom. `idleMs = 900` and `bufferMs = 900` are separate user settings: idle before offscreen compaction, and time retained in hydrated state before a card can be compacted. Hydrate near the viewport immediately; the buffer is **not** a forced wait before visible content appears. Do not compact a focused card, and restore its semantic body before it becomes visible.

Every action is sorted by declared eligibility/priority, with stable tie-breaking. Right-click or Ctrl-click inspects a port-event/diffusion log without firing its action. Explicit auto-processing runs only a bounded **local demonstration** queue. It never compiles Lean, upgrades mathematical claims, initiates remote processing, publishes results, or creates human approvals. Status colors distinguish `INFO`, `WARNING`, `ERROR`, and local `GOOD` workflow progress; `GOOD` does not mean kernel acceptance. A separate `Lean: NOT_RUN` indicator is shown on every full card.

Every installed source-specific adapter must bind exact Lean declaration, source commit/blob, real-shadow/reflection witness, prime-type metadata and the complete signed Möbius pair inventory. Missing transport or failed legality becomes an observable pending/blocked residue, not a guessed successful map.

## Verification obligations and owning boundaries

| Item | Current evidence | Next acceptance |
| --- | --- | --- |
| Lean source text for shadow/reflection/ports | New candidate source | Fresh Lean compilation, kernel/axiom audit and exact imported closure |
| Ordered Möbius pair definitions | New source candidate with explicit supplier parameters | Actual Möbius/pickup adapter, swapped-pair residue reflection and source closure |
| Prime addressing | Type-dependent address witness (`Nat.Prime`) | Finite manifest-wide injection, source/Universe/elaboration completeness check |
| DOM/prismatic encode-decode | New pure `PrismaticCacheAnchor.lean` candidate plus local HTML implementation | Fresh Lean replay, then separate runtime semantic/scroll/accessibility refinement |
| Event/human workflow permissions | Local demonstration only | Authorized Noe owner, capability, signed receipt and human adjudication where required |
| Diffusion log and statuses | Local finite six-node diffusion with 3 steps | Authenticated actual Noe run provenance and legal gate receipts |
| Cache retention | Local browser storage, bounded 250 moments | Durable external store and crash/restart, eviction/restore, race and privacy policies |
| Release or service deployment | NOT_PERFORMED | `grwtsk/com` component review and user-authorized build/release |

Repository ownership: `grwtsk/math` maintains the pure mathematical types and source-only targets; `grwtsk/noeaaeue` owns mutable computation, event receipts, proof automation and runtime authority; `grwtsk/com` owns the reader, compositor and optional workspace interface. A downloadable local browser prototype is a working **local UI**, not a deployed or certified production service.
