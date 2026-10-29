# Verification target: Of Norm Inner Prop Neg One

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c13ed8df5a8ad4df3c3e81bdf3da16d0e345fea",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/OfNorm/Variant02fd524a680082256027d8c3d5b82c38ff70c34591a7046902b93788ce948b2d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/OfNormInnerPropNegOne.lean/index.md) · [Full source](../../../../FunctionalAnalysis/OfNormInnerPropNegOne.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c13ed8df5a8ad4df3c3e81bdf3da16d0e345fea`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/OfNorm/Variant02fd524a680082256027d8c3d5b82c38ff70c34591a7046902b93788ce948b2d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/OfNorm/Variant02fd524a680082256027d8c3d5b82c38ff70c34591a7046902b93788ce948b2d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Algebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [InnerProductSpaceable](../../../../FunctionalAnalysis/OfNormInnerPropNegOne.lean/declarations/innerproductspaceable.md) | 66 | `declaration-track:4308a9c17d79203644c8a99f2ea46552f3ac218d34f802169a58bf3a2a5ff71d` |
| 2 | `theorem` | [InnerProductSpace.toInnerProductSpaceable](../../../../FunctionalAnalysis/OfNormInnerPropNegOne.lean/declarations/innerproductspace-toinnerproductspaceable.md) | 73 | `result-track:9703daf54a865d9444d31525d69f7ec4ea013608fab3b07c0a058be0d884a447` |
| 3 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/OfNormInnerPropNegOne.lean/declarations/instance-source-edition-2.md) | 79 | `declaration-track:c85121bb6eab86b235dd6e0a7b14875199312f26e54a3fb79b3dcf55223bbc8c` |
| 4 | `def` | [inner_](../../../../FunctionalAnalysis/OfNormInnerPropNegOne.lean/declarations/inner.md) | 89 | `declaration-track:082308ece883509ae7ddbb40762034c3e6edbed88c040db5a38e60361ad95132` |
| 5 | `def` | [innerProp'](../../../../FunctionalAnalysis/OfNormInnerPropNegOne.lean/declarations/innerprop.md) | 100 | `declaration-track:216f2bcd5b43acb99a64c72cf1ed90d2393ae3bbaf6d906c63aac1ccd9179fc6` |
| 6 | `theorem` | [innerProp_neg_one](../../../../FunctionalAnalysis/OfNormInnerPropNegOne.lean/declarations/innerprop-neg-one.md) | 105 | `result-track:ec7247a6add636bccc2bc6834cfa24ac509fb6097b65677fbe2e4a87b9bfea05` |
| 7 | `theorem` | [_root_.Continuous.inner_](../../../../FunctionalAnalysis/OfNormInnerPropNegOne.lean/declarations/root-continuous-inner.md) | 120 | `result-track:076527b4a33509ebf0e3a046baccfd56a024f4a07f546903411a49aa2492ddbe` |
| 8 | `theorem` | [inner_.norm_sq](../../../../FunctionalAnalysis/OfNormInnerPropNegOne.lean/declarations/inner-norm-sq.md) | 127 | `result-track:cb0e7d377ba5903e0e1df585d1b70d02e3077be404f1687563b523d1bca53cb7` |
| 9 | `theorem` | [inner_.conj_symm](../../../../FunctionalAnalysis/OfNormInnerPropNegOne.lean/declarations/inner-conj-symm.md) | 139 | `result-track:1e2f73d9d3831fb27a657271ae48e4c4228c336071acb2b87bc367466a10e559` |
| 10 | `theorem` | [add_left_aux1](../../../../FunctionalAnalysis/OfNormInnerPropNegOne.lean/declarations/add-left-aux1.md) | 166 | `result-track:f0527f89dc9cf30a05e372118862d23a59e7dc631fe224c23861b24d3317829b` |
| 11 | `theorem` | [add_left_aux2](../../../../FunctionalAnalysis/OfNormInnerPropNegOne.lean/declarations/add-left-aux2-source-edition-2.md) | 171 | `result-track:c080ca15996178879e52435ea427e96ba8e3336b34ec632ccdc8a2886abdad4c` |
| 12 | `theorem` | [add_left_aux2'](../../../../FunctionalAnalysis/OfNormInnerPropNegOne.lean/declarations/add-left-aux2.md) | 177 | `result-track:b4df0ef3901c41f4659a4458dc7ad81045d37b95227d0abed0556d0c00663674` |
| 13 | `theorem` | [add_left_aux3](../../../../FunctionalAnalysis/OfNormInnerPropNegOne.lean/declarations/add-left-aux3.md) | 183 | `result-track:8b4754c2514b9c1d22b4ba50af5083f9c4c6422e023c002c42afa78032ccb394` |
| 14 | `theorem` | [add_left_aux4](../../../../FunctionalAnalysis/OfNormInnerPropNegOne.lean/declarations/add-left-aux4.md) | 188 | `result-track:30a1571d05ae966570f51d0fff4d60615fe5639bfd3d369ef86ada145a5283eb` |
| 15 | `theorem` | [add_left_aux4'](../../../../FunctionalAnalysis/OfNormInnerPropNegOne.lean/declarations/add-left-aux4-source-edition-2.md) | 194 | `result-track:596df97e3eb2032e5aac464c38f191e8c3c3e3ea847c3f4ca7a3883293286338` |
| 16 | `theorem` | [add_left_aux5](../../../../FunctionalAnalysis/OfNormInnerPropNegOne.lean/declarations/add-left-aux5.md) | 199 | `result-track:7b99402b5a0a4f0e5fbe0b80f0ea070c661e0a66e6360424bd0d2a5ac8ff1a30` |
| 17 | `theorem` | [add_left_aux6](../../../../FunctionalAnalysis/OfNormInnerPropNegOne.lean/declarations/add-left-aux6.md) | 208 | `result-track:b076cb88b699d1e793e7bbbf6ac08db990f2449a6da5ccb7d5eb9b7aa501d8b3` |
| 18 | `theorem` | [add_left_aux7](../../../../FunctionalAnalysis/OfNormInnerPropNegOne.lean/declarations/add-left-aux7.md) | 217 | `result-track:788c4ac1b553260f89f7285e378481daa42523ff64f731329bdc596f29626828` |
| 19 | `theorem` | [add_left_aux8](../../../../FunctionalAnalysis/OfNormInnerPropNegOne.lean/declarations/add-left-aux8.md) | 224 | `result-track:6981c383feae867ee26c25c348d0f0f72d4fdb1f330c12cc5277870b81d38286` |
| 20 | `theorem` | [add_left](../../../../FunctionalAnalysis/OfNormInnerPropNegOne.lean/declarations/add-left.md) | 231 | `result-track:5724750281fa4a7c35f48b5f3bd44a61a742b8e6ef7dae59694d76849d19bf6b` |
| 21 | `theorem` | [nat](../../../../FunctionalAnalysis/OfNormInnerPropNegOne.lean/declarations/nat.md) | 244 | `result-track:674f67898943d78cdbe1dda63a040996245f790a75449d6bd793ed7eacdcbae3` |
| 22 | `theorem` | [nat_prop](../../../../FunctionalAnalysis/OfNormInnerPropNegOne.lean/declarations/nat-prop.md) | 252 | `result-track:2661780b6190d9d25a5caabc4c260c3c4e90dbbcd74dcf8bce911aa5cc8856fb` |
| 23 | `theorem` | [int_prop](../../../../FunctionalAnalysis/OfNormInnerPropNegOne.lean/declarations/int-prop.md) | 255 | `result-track:71439403e5b18d6b41ef401f8485c3c8fd0572b7d171e222b968dd26229a61a3` |
| 24 | `theorem` | [rat_prop](../../../../FunctionalAnalysis/OfNormInnerPropNegOne.lean/declarations/rat-prop.md) | 270 | `result-track:49039d71ebfb11d807d6e7ddc1dd89e43af6a17c326eed8064c170476cbc1315` |
| 25 | `theorem` | [real_prop](../../../../FunctionalAnalysis/OfNormInnerPropNegOne.lean/declarations/real-prop.md) | 279 | `result-track:95f9c6ed50ee371fcfd021cfc8129747de676d8ec986cbcc1337bd383fcbe0d8` |
| 26 | `theorem` | [I_prop](../../../../FunctionalAnalysis/OfNormInnerPropNegOne.lean/declarations/i-prop.md) | 288 | `result-track:2a9fba81ff3ddd8b34c665d5d467532a264fbeb386b5f01570d3d2b7602238c0` |
| 27 | `theorem` | [innerProp](../../../../FunctionalAnalysis/OfNormInnerPropNegOne.lean/declarations/innerprop-source-edition-2.md) | 305 | `result-track:6670b7013ec181dc62bd94cc1368369636d1a3443049c4e55be3796126513c37` |
| 28 | `def` | [InnerProductSpace.ofNorm](../../../../FunctionalAnalysis/OfNormInnerPropNegOne.lean/declarations/innerproductspace-ofnorm.md) | 318 | `declaration-track:1bbb56c31fea44ba82242a757d1ff9e253538fa201a224ecffd28ec02ac5d2bb` |
| 29 | `theorem` | [nonempty_innerProductSpace](../../../../FunctionalAnalysis/OfNormInnerPropNegOne.lean/declarations/nonempty-innerproductspace.md) | 337 | `result-track:077276e5e7395c82f4c92b9248d06a51d8e1f4370af19670989bf05b334ab06f` |
| 30 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/OfNormInnerPropNegOne.lean/declarations/instance.md) | 351 | `declaration-track:1d2046788e03aa85bd5afc67fdfdf820a3c3e2fd9a5d69f856e63c8f989b2e0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=842423ed7a1f0dca5c58a60a7e47fd27dc58b1b0dbedc14ff3becdecdb2cdc35 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/OfNorm/Variant02fd524a680082256027d8c3d5b82c38ff70c34591a7046902b93788ce948b2d.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/OfNorm/Variant02fd524a680082256027d8c3d5b82c38ff70c34591a7046902b93788ce948b2d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
