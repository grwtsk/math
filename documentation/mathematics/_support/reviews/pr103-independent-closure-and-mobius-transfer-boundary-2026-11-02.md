# PR103 independent proof-closure verification and exact original Möbius transfer: blocked disposition

Local mathematical attribution: grwtsk contributors.
Source inspection: 2026-11-02. No native Lean checker was executed in this review. This is an evidence-bound audit and interface assessment, NOT an independent successful proof verification.

## Exact PR103 source pinned

External source `GTimG/QuasiRiemannTracker`, merge `8b1a0167c8e324099884152181e3fb2206510e88`, full merged tree `96df06518b3a18921cf1e6ce1d6966eaa037a474`, submission tree `884a35c3587cdaf1f73dd8d904d5b259659b5199` at `submissions/2026-11-01-closest-fraction-contact/src/`.

A GitHub Git-tree query at that immutable submission tree returned `truncated=false`, exactly **237 Lean source files** among 252 returned tree entries. This is a source inventory, not proof of complete transitive imported-module closure, because those 237 files also import package and upstream modules outside the submission tree. To qualify the theorem, the source registry must resolve every such import at the actual pinned Lake/compiler revision, reject missing/ambiguous files and cyclical dependencies, and preserve every byte and dependency provenance.

The exact top-level proof source is
`Candidate/Main.lean`, blob `808d04cec892449707d23e81f94179e2738fdf1a`. Its theorem
`Candidate.bound` states for any modulus q>0 and Dirichlet character χ, `DirichletCharacter.LFunction χ s != 0` whenever the real part exceeds the exact rational `externalPR103Theta`, except the principal pole χ=1,s=1; its proof invokes `Qrh.PositiveGap.bound`. It ends with `#print axioms Candidate.bound`; the presence of this command in source is not the output of an independent execution.

Read additional source-specific imports at the same immutable merge:
- `Candidate/Local/Qrh/PositiveGap/BestEndpoint.lean`, blob `f10432357d29670effde475b951a8af275f32d6a`, whose proof uses `QRH.PositiveGap.Return.Tuning.dirichlet_of_global_source` and whose `return_source` still contains a nontrivial `hβ` argument at intermediate scope.
- `Candidate/Local/Qrh/PositiveGap/SourceComposition.lean`, blob `d063b79acd04ce1f78484c9c3b00d1e3c0b1fb89`, which applies actual finite selected-source and return lemmas.
- `Candidate/Local/Qrh/PositiveGap/Return/Tuning/Endpoint.lean`, blob `3265230dc571cb1af2686b67bf258631dd93cfb1`, inspected at source level.
- `Candidate/Notices.lean`, blob `28594840aea386c1f56b6d367da796ba932fa1ef`, retains upstream attribution.
- `metadata.json`, blob `be65087e4b97b339bc45373b229ec2b0f2d05e36`.

A narrow text inspection of these named files found no obvious line-start `axiom`, `sorry`, `unsafe`, `native_decide`, or `set_option debug.skipKernelTC` declarations. This is **NOT** a whole-tree scan and **NOT** a transitive axiom audit; comment/string and metaprogramming-aware inspection is separately required. In particular, do not promote this narrow scan to all 237 modules.

## Evidence versus claims

The merged [PR #103](https://github.com/GTimG/QuasiRiemannTracker/pull/103) description reports author-local success compiling all 237 submission Lean modules in isolation with cached dependencies (207 seconds), standard `propext`, `Classical.choice`, `Quot.sound` `#print axioms` output, and 450 tests. It explicitly states official Comparator, Lean, NanoDa, con-ron admission is separate. The GitHub connector returned **zero** GitHub Actions workflow runs linked to merge commit `8b1a0167c8e324099884152181e3fb2206510e88`; this does not prove no other external native verification exists. No externally retained independent source-bound PR103 complete-transitive-closure replay, compiler transcript, exit status, or immutable signed receipt was found in this pass.

On this host, no local `lean`, `lake`, or `elan` executable, nor a verified local `grwtsk/noeaaeue` checkout/native owner, is available. Canonical Noe proof-automation instructions were read at `grwtsk/noeaaeue@547e05de7ce3548492464ed9b8a6c9edef2c752c`, `workflows/research/orchestration/skills/noe-proof-automation/SKILL.md`, including current replay and source-closure policies. Managed native dispatch requires an installed reviewed profile, current host permissions, owner/holds and exact-source registry. No tool call was made to create a queue, bypass native holds or report a kernel PASS. Independent PR103 native verification remains **BLOCKED / NOT_RUN**.

## Exact remaining mathematical and Lean proof obligations

The GRWTSK source at `MoebiusStrongFixedPowerPR103.lean`, blob `10f2fba05c105c3e80b58ed9632901b5550444d9`, defines three explicit unproved-in-GRWTSK propositions:
1. `ExternalPR103ZetaNonvanishing`: the exact source-compatible mod-one character specialization of `Candidate.bound`, with its pole restriction; requires import/adapter for pinned definitions of Dirichlet L and `riemannZeta`, and a proof of source equality.
2. `ZeroFreeToMertensPowerBridge`: standard Perron/contour theorem from a genuine zero-free half-plane at θ₀ to the ORIGINAL `mertensPrefix(exp u)` power envelope at every strictly larger θ<1. The proof must retain vertical bounds on 1/ζ, Perron truncation, initial x, the floor and x=integer endpoints, and constants independent of all dyadic blocks. **Not a theorem merely by declaring the proposition.**
3. `PickupVelocityPowerEnergyTransfer`: actual interval-calculus theorem integrating the original signed source twice, from `|pickupVelocity u|<=C e^(ρu)` to `pickupEnergy T<=C²/(2ρ³)e^(2ρT)`. The original time measure and nonnegativity must be checked at every interface; this is arithmetic-free but locally not yet source-kernel-proved.

The full original dense profile comparison is `MoebiusCompleteSignedProfileClassicalPNT.FullOriginalProfileTwoSidedBudgetTarget`, which remains a named **UNPROVED Lean proposition**, even though its finite/real-variable proof is written. The source `MoebiusFixedPowerFullProfileBalance.lean` blob `553ce4c8005f2ac10e206210d9aedb24158cb57d` supplies rational source candidates and conditional wrappers, but `CompleteProfileSourceComparison`, `PolynomialExponentialAbsorption`, `VerifiedOAICompleteCoreStrictSavingTarget` and `PR103CompleteCoreStrictSavingTarget` are still Prop targets, NOT completed kernel theorems. Prior published `MoebiusPR103ExactEnergyAbscissa.lean` conditional endpoint-abscissa transfer does not discharge them.

**Acceptance target**: resolve the complete PR103 project/upstream import closure at the exact merge SHA and pinned compiler/Mathlib; execute a fresh kernel-checked rebuild with `--trust=0` and reviewed warning policy; compile expected-type consumers for `Candidate.bound`, its mod-one adapter and local source targets; gather one complete `#print axioms` output per declaration and audit all private/opaque/generated dependencies; perform fresh independent replay, and record immutable output/exit/status/digests and host restoration. Check standard axiom allowance separately from source fidelity and analytic theorem transfer. A cached compile from a different revision is not independent acceptance.

The mathematical implication `ExternalPR103ZetaNonvanishing ∧ ZeroFreeToMertensPowerBridge ∧ PickupVelocityPowerEnergyTransfer ⇒ FixedRateUpper endpointSum (1867/2500)` has candidate proof scripts in the preceding source. Without establishing those three inputs, it remains CONDITIONAL. The original all-positive-rate endpoint on one adequately covering G and RH remain open.

**Disposition**: SOURCE TREE PINNED; PRIMARY THEOREM TYPE REVIEWED; AUTHOR-REPORTED LOCAL BUILD OBSERVED; INDEPENDENT NATIVE PR103 KERNEL REPLAY NOT_RUN/BLOCKED; ORIGINAL GRWTSK CONTOUR/CALCULUS/FULL-CORE PROOF NOT_FORMALIZED; NO NEW ANALYTIC THEOREM ACCEPTED IN THIS PASS.
