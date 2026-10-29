# Verification target: Cyclic Fiber Hop Namespaced Public Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df0b8e179f907e9983170f50c5db8fae6dcf5693",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CyclicFiberHop/Variant42d8413aeaca22a2795f939943f825f34135fe86358f0e65e127782dcee3709f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df0b8e179f907e9983170f50c5db8fae6dcf5693`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CyclicFiberHop/Variant42d8413aeaca22a2795f939943f825f34135fe86358f0e65e127782dcee3709f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CyclicFiberHop/Variant42d8413aeaca22a2795f939943f825f34135fe86358f0e65e127782dcee3709f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CoverPhase](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/coverphase.md) | 44 | `declaration-track:b8808fa65ae37946ea8257b6c30d3b0ea8f1178aea682d71b99ff3fb966a5e82` |
| 2 | `instance` | [coverModulusNeZero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/covermodulusnezero.md) | 47 | `declaration-track:e19eef05b21fcca45c2a96976f5f88aae2cdf00819c698f1078ae8ac042b320d` |
| 3 | `abbrev` | [Fiber3](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/fiber3.md) | 52 | `declaration-track:cb264f2678f35610c254badb5279076b39c37a60376c763501eeb43c63eb0475` |
| 4 | `abbrev` | [Section3](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/section3.md) | 56 | `declaration-track:1a4fabfd5718e90eaee9445a1787f763612afe066410045d90854910601eef81` |
| 5 | `def` | [successor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/successor.md) | 61 | `declaration-track:c66abed2bc610db97315acfcf91d3acbc762ec50274e536ccca2812ef07b54b0` |
| 6 | `def` | [predecessor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/predecessor.md) | 66 | `declaration-track:30e342d3d407c3cbeee175f03a49d05d14683ffa457c44794e1064b3b019b037` |
| 7 | `def` | [antipode](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/antipode.md) | 71 | `declaration-track:60193419641f156ab5a2239c5b209aa758fd45e839e6ccebce4d05ab97ac7ab5` |
| 8 | `theorem` | [successor_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/successor-apply.md) | 75 | `result-track:f751a1a32c819672c72fcd5e15d2d85dfa038159898b9b7f48bdb4656027812a` |
| 9 | `theorem` | [predecessor_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/predecessor-apply.md) | 80 | `result-track:910a1ac95ea263ff20f0d70d2396162c8aba585bdc8b9af1a6029792f7321706` |
| 10 | `theorem` | [antipode_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/antipode-apply.md) | 85 | `result-track:d08f343eb3a1b1eda7cc48f1171649a5a589c5078dd84c21420c05a14e29bc0c` |
| 11 | `theorem` | [successor_predecessor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/successor-predecessor.md) | 90 | `result-track:16dbfee9e5fac158997786650b7f43786036d6e147c7548ea980adb70a535873` |
| 12 | `theorem` | [predecessor_successor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/predecessor-successor.md) | 95 | `result-track:c32886eb31c8f919f5c39a951d46652784d3adee21804cf8b05232e42671e562` |
| 13 | `theorem` | [antipode_involutive](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/antipode-involutive.md) | 100 | `result-track:c7994ef41a862aafc73771f4b7620e69c388c50ef63787832a2414e6925e51e0` |
| 14 | `theorem` | [successor_commutes_antipode](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/successor-commutes-antipode.md) | 109 | `result-track:0439545707544c227b7cc19cdf3819f268677cff3e116e891690e9806a61b1e8` |
| 15 | `theorem` | [predecessor_commutes_antipode](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/predecessor-commutes-antipode.md) | 115 | `result-track:a0ce5a2be7212fec310fa89a97a799706dc2d04a32c81ef952d6428e2054ed80` |
| 16 | `structure` | [StepSystem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/stepsystem.md) | 124 | `declaration-track:00144dd97185cac0b9a414bf544c692eae56fae282ad4673628ce2a033f71825` |
| 17 | `def` | [forwardProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/forwardproduct.md) | 134 | `declaration-track:fc7dbb69aa2630d47576aeed13b85578f09f9a87d9e52340f76282be72aa3266` |
| 18 | `def` | [backwardProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/backwardproduct.md) | 143 | `declaration-track:c86c533fb584de320528a196b9a54c0e39aaa4158c344b25115d168f2d6c71ce` |
| 19 | `theorem` | [forwardProduct_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/forwardproduct-zero.md) | 151 | `result-track:d9340ca27616e199df5c14b9d3ab3ca0298af2cb417d554a4047d383f497397d` |
| 20 | `theorem` | [forwardProduct_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/forwardproduct-succ.md) | 156 | `result-track:08fd3b3cf6b283044c14339a04278f3c4a2862ab7d0c427526272a4d26aae716` |
| 21 | `theorem` | [backwardProduct_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/backwardproduct-zero.md) | 164 | `result-track:f420ab9638e82996f1d2752db39020df00acaf6267e38e11e75c7abfd43fd189` |
| 22 | `theorem` | [backwardProduct_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/backwardproduct-succ.md) | 169 | `result-track:6dda7babb5ace1ff6a444a7f39661423cdac76d08b7fa70a55a30dbc31109130` |
| 23 | `theorem` | [backwardProduct_eq_forwardProduct_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/backwardproduct-eq-forwardproduct-symm.md) | 177 | `result-track:3749e0ced112bf757c2b6dcf0cd8a8f1b44e5c3dc15d3581bd60b2ce58861c24` |
| 24 | `theorem` | [backward_forward_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/backward-forward-apply.md) | 187 | `result-track:80d2e14589bb5d1a02286e228de2247abac62678e062e32ba931042a7334fd3d` |
| 25 | `theorem` | [forward_backward_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/forward-backward-apply.md) | 194 | `result-track:a705b7b849bb0d4633364e3f125d607f597ef7b053d0c6ad56f9019a4c83ace8` |
| 26 | `theorem` | [forwardProduct_bijective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/forwardproduct-bijective.md) | 201 | `result-track:185c3fdb472d0a22b82146060be66bcbb1b14b1fe11a792a0873a1f032333988` |
| 27 | `theorem` | [forwardProduct_half_compatible](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/forwardproduct-half-compatible.md) | 207 | `result-track:cea52e25274482568b3e79aa2668d157a64c791228802192e428f1d11424554d` |
| 28 | `def` | [hopEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/hopequiv.md) | 222 | `declaration-track:893b426dd5b979bece6c2d1038b34635ac8eff81751313ab2d9f771b675a6c98` |
| 29 | `theorem` | [hopEquiv_apply_successor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/hopequiv-apply-successor.md) | 242 | `result-track:a855bd9e62af69710a971b0d46d4a1e588ce09a3b41631b415186d87674f389d` |
| 30 | `theorem` | [hopEquiv_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/hopequiv-symm-apply.md) | 249 | `result-track:58a3f059958dbc97f2013e005bf402d3265c16766a3a8575892067fc145f675c` |
| 31 | `theorem` | [hopEquiv_bijective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/hopequiv-bijective.md) | 256 | `result-track:adc197eb621f2085d37da0c075bea2d210ed079d33faf3d60d34a0fe5c591fcd` |
| 32 | `def` | [halfShiftEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/halfshiftequiv.md) | 262 | `declaration-track:97e853db1166efbdc1d7e66fef656f189fd994e4257c6595d0cb4d9edeba0101` |
| 33 | `theorem` | [halfShiftEquiv_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/halfshiftequiv-apply.md) | 278 | `result-track:0142a531717ffd87c047116308029f100afbe936696468d417e04690a07bc2e8` |
| 34 | `theorem` | [hopEquiv_commutes_halfShift](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/hopequiv-commutes-halfshift.md) | 283 | `result-track:ca47cd6d8c5ea11246dc376bafd0c000fbeb3fe9e2a0705e7949bfba2cd6a7de` |
| 35 | `def` | [IsAntipodal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/isantipodal.md) | 296 | `declaration-track:81954ed4ff49b055f51ebe39e3af19f9cd357ce014bf1e7408d8d70ae4f8eb0b` |
| 36 | `theorem` | [hopEquiv_preserves_antipodal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/hopequiv-preserves-antipodal.md) | 300 | `result-track:d19973a68cfe8496f828c6bd153ab3211faac8779a2afb302c2652fa4f9c741d` |
| 37 | `def` | [permuteFiber](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/permutefiber.md) | 318 | `declaration-track:d695bd247d696746d5e1e24f55ef57dd6562c66a19c5387f58e9a3358d2ebf8f` |
| 38 | `def` | [permutationRepresentation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/permutationrepresentation.md) | 333 | `declaration-track:da16eabc84fa623c8c1e610200b7038873a1923532843f20fd9a049c725011f1` |
| 39 | `def` | [adjacentSwap01](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/adjacentswap01.md) | 345 | `declaration-track:6ba349fc8466a192d2a96caa83d1ee19c566c6d39b5846a1fbcb8d53fe9f2684` |
| 40 | `def` | [adjacentSwap12](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/adjacentswap12.md) | 350 | `declaration-track:d57676b802dc09e6b57f6b3e25283e9b4f9ca25389cc2b0b66fe0836cd87d175` |
| 41 | `theorem` | [adjacentSwap01_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/adjacentswap01-sq.md) | 354 | `result-track:e5944a7b1716b0e244886bfbdd6b7f9991e526c35ce77e9f61c9ae8dbf68f02c` |
| 42 | `theorem` | [adjacentSwap12_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/adjacentswap12-sq.md) | 360 | `result-track:2efcd6ff0138db38e0aefd2f903f3a53d26e51b4515a5c52fa261a22180378a4` |
| 43 | `theorem` | [adjacentSwap_braid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/adjacentswap-braid.md) | 366 | `result-track:b0b7d1ad3d44201d75526954e28807cbf1b3d78d956dc7aea605ebb35471dc93` |
| 44 | `theorem` | [adjacentPermutationHops_satisfy_s3_relations](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition2.lean/declarations/adjacentpermutationhops-satisfy-s3-relations.md) | 378 | `result-track:e9e66a1a08646b8925060f3eaaed3b80e2b94f9ca08f04dc0be5d3d76d1106af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=884a230f2da1e848626b672995883799efed8fb1c8be847c8be4a5e1be74a4cf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CyclicFiberHop/Variant42d8413aeaca22a2795f939943f825f34135fe86358f0e65e127782dcee3709f.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/CyclicFiberHop/Variant42d8413aeaca22a2795f939943f825f34135fe86358f0e65e127782dcee3709f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
