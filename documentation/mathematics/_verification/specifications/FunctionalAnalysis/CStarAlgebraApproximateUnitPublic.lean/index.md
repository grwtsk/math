# Verification target: CStar Algebra Approximate Unit Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9247cd48596becdf6465ea1c472dc8a7869ed8e2",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ApproximateUnit/Varianta343f48b813e6f987382b85117e8436f0c0cb776a977770b3351f4aa4b361bdd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/CStarAlgebraApproximateUnitPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/CStarAlgebraApproximateUnitPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9247cd48596becdf6465ea1c472dc8a7869ed8e2`.

Source path: `GRWTSK/Topology/GeneralTopology/ApproximateUnit/Varianta343f48b813e6f987382b85117e8436f0c0cb776a977770b3351f4aa4b361bdd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ApproximateUnit/Varianta343f48b813e6f987382b85117e8436f0c0cb776a977770b3351f4aa4b361bdd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Interval.Set.Group` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [CFC.monotoneOn_one_sub_one_add_inv](../../../../FunctionalAnalysis/CStarAlgebraApproximateUnitPublic.lean/declarations/cfc-monotoneon-one-sub-one-add-inv.md) | 53 | `result-track:54da5fa8d05f9fcf6982c741567908ae6131979504c1ac4d7db3eb6dc087a3c1` |
| 2 | `lemma` | [CFC.monotoneOn_one_sub_one_add_inv_real](../../../../FunctionalAnalysis/CStarAlgebraApproximateUnitPublic.lean/declarations/cfc-monotoneon-one-sub-one-add-inv-real.md) | 71 | `result-track:9641b6954a5edeba647a130dc18a900e0175c3ac278642709020da84bb6edb5e` |
| 3 | `lemma` | [Set.InvOn.one_sub_one_add_inv](../../../../FunctionalAnalysis/CStarAlgebraApproximateUnitPublic.lean/declarations/set-invon-one-sub-one-add-inv.md) | 87 | `result-track:cbe0ee647ec614d3e721056684d49e8e2be6e5537194384af5309f37f5f5bec2` |
| 4 | `lemma` | [norm_cfcₙ_one_sub_one_add_inv_lt_one](../../../../FunctionalAnalysis/CStarAlgebraApproximateUnitPublic.lean/declarations/norm-cfc-one-sub-one-add-inv-lt-one.md) | 100 | `result-track:d6e45dd96fc5cb7508baeeea30d5fd4f0c24b2838a0a21488f22811282d2778f` |
| 5 | `lemma` | [CStarAlgebra.directedOn_nonneg_ball](../../../../FunctionalAnalysis/CStarAlgebraApproximateUnitPublic.lean/declarations/cstaralgebra-directedon-nonneg-ball.md) | 104 | `result-track:a1037ab628b955fd8d482f31c4e064a07472637e2569cbfb8d1ab927d54bab01` |
| 6 | `structure` | [Filter.IsIncreasingApproximateUnit](../../../../FunctionalAnalysis/CStarAlgebraApproximateUnitPublic.lean/declarations/filter-isincreasingapproximateunit.md) | 143 | `declaration-track:579311a2eb29c9ebd35605a932aa193b26161e3ba511b70de56724478818b633` |
| 7 | `lemma` | [eventually_nnnorm](../../../../FunctionalAnalysis/CStarAlgebraApproximateUnitPublic.lean/declarations/eventually-nnnorm.md) | 150 | `result-track:34b2b8eb6892efceb306a2711910e97f327d7420eaa758511ecc8d596b809b4c` |
| 8 | `lemma` | [eventually_isSelfAdjoint](../../../../FunctionalAnalysis/CStarAlgebraApproximateUnitPublic.lean/declarations/eventually-isselfadjoint.md) | 154 | `result-track:761bbdc4b1525a75202d90c5b0454e38925e6f21a6740b8636cf7d81b440b394` |
| 9 | `lemma` | [eventually_star_eq](../../../../FunctionalAnalysis/CStarAlgebraApproximateUnitPublic.lean/declarations/eventually-star-eq.md) | 158 | `result-track:526f4ac0f73c7f73cd16807ecd61ffa4d3b2562769995960228a1c4177fcd123` |
| 10 | `lemma` | [closedBall_mem](../../../../FunctionalAnalysis/CStarAlgebraApproximateUnitPublic.lean/declarations/closedball-mem.md) | 163 | `result-track:01f827c43ce9365c7077e1774cab2fa17786993c6988fbf6f527df63891f1305` |
| 11 | `lemma` | [pure_one](../../../../FunctionalAnalysis/CStarAlgebraApproximateUnitPublic.lean/declarations/pure-one.md) | 167 | `result-track:2a225bdacef912d153a25c90835e01b25492737c0d2c5bf41fcb985c6252aca3` |
| 12 | `lemma` | [tendsto_mul_right_of_forall_nonneg_tendsto](../../../../FunctionalAnalysis/CStarAlgebraApproximateUnitPublic.lean/declarations/tendsto-mul-right-of-forall-nonneg-tendsto.md) | 180 | `result-track:d1fa6ae2b082876c32d7aa91a309d16ba0c7710cb116f4bf911eb8ab34b1484e` |
| 13 | `lemma` | [tendsto_mul_left_iff_tendsto_mul_right](../../../../FunctionalAnalysis/CStarAlgebraApproximateUnitPublic.lean/declarations/tendsto-mul-left-iff-tendsto-mul-right.md) | 193 | `result-track:88c5a15c53f272e293658e840c1c850a86831db6a53b3cfe4f8a2497bce1613b` |
| 14 | `lemma` | [isBasis_nonneg_sections](../../../../FunctionalAnalysis/CStarAlgebraApproximateUnitPublic.lean/declarations/isbasis-nonneg-sections.md) | 204 | `result-track:f5a2e059217c895aa13510286a455092f611773be156411c61a05c7e6c50b4e1` |
| 15 | `def` | [approximateUnit](../../../../FunctionalAnalysis/CStarAlgebraApproximateUnitPublic.lean/declarations/approximateunit.md) | 215 | `declaration-track:77985201042ef39205903448f999515131bcc2fd8b6db1fb863205774b1e17a4` |
| 16 | `lemma` | [hasBasis_approximateUnit](../../../../FunctionalAnalysis/CStarAlgebraApproximateUnitPublic.lean/declarations/hasbasis-approximateunit.md) | 220 | `result-track:23fbd24131f29ecf685484a83b8cf5858c38029070761088382e0c98ae83f59e` |
| 17 | `lemma` | [nnnorm_sub_mul_self_le](../../../../FunctionalAnalysis/CStarAlgebraApproximateUnitPublic.lean/declarations/nnnorm-sub-mul-self-le.md) | 228 | `result-track:abfa878edf136af985fa5ab59c1e9841b6ffdaf8209d2f9e3b7a27231437959b` |
| 18 | `lemma` | [norm_sub_mul_self_le](../../../../FunctionalAnalysis/CStarAlgebraApproximateUnitPublic.lean/declarations/norm-sub-mul-self-le.md) | 247 | `result-track:ba32f17fa56dc0fc0957e9b9b04e7e9845ce8720fc0824ba87198bbdd03d73e9` |
| 19 | `lemma` | [norm_sub_mul_self_le_of_inr](../../../../FunctionalAnalysis/CStarAlgebraApproximateUnitPublic.lean/declarations/norm-sub-mul-self-le-of-inr.md) | 255 | `result-track:7308cdaa7f68db30d5c8f7415a2bd753ad7b9b434270203c0c688558656cf1e3` |
| 20 | `lemma` | [tendsto_mul_right_approximateUnit](../../../../FunctionalAnalysis/CStarAlgebraApproximateUnitPublic.lean/declarations/tendsto-mul-right-approximateunit.md) | 268 | `result-track:207e089d7e7c40bccf02ef4b6d53d618739cb908b99f34f9cd7faebfae91ca14` |
| 21 | `lemma` | [increasingApproximateUnit](../../../../FunctionalAnalysis/CStarAlgebraApproximateUnitPublic.lean/declarations/increasingapproximateunit.md) | 320 | `result-track:81b7dc0523d333697a595d780defce7b309878cf59d99dd2bfba594280060c43` |
| 22 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/CStarAlgebraApproximateUnitPublic.lean/declarations/instance.md) | 335 | `declaration-track:bee8702469520fbef831000b5ac2ac793256423e867d8b3c8a8a24abc74e2b49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=306423253fe8d7770df4ac3850a8ca94839da5edee71a9094539b8a8d4f52fb8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ApproximateUnit/Varianta343f48b813e6f987382b85117e8436f0c0cb776a977770b3351f4aa4b361bdd.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ApproximateUnit/Varianta343f48b813e6f987382b85117e8436f0c0cb776a977770b3351f4aa4b361bdd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
