# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "047f4ad1c16f004915374f7d1954067dfe07a247",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/index.md) · [Full source](../../../../../../Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `047f4ad1c16f004915374f7d1954067dfe07a247`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/declarations/instance--84afa257b124692221b44369.md) | 39 | `declaration-track:84afa257b124692221b44369af2593260de5be0d3a40a04a3f064c29d7a49ca7` |
| 2 | `instance` | [(anonymous)](../../../../../../Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/declarations/instance--226bed693b0e6806127e54e1.md) | 42 | `declaration-track:226bed693b0e6806127e54e1c2ca1abd9a3d2b7326598b9c4d146e3d5d583f08` |
| 3 | `lemma` | [posPart_def](../../../../../../Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/declarations/pospart-def--f0a2642523eb74e20db4caae.md) | 49 | `result-track:f0a2642523eb74e20db4caaeb009708eb2805554a1c9e0dd1ff7fe6f126b73d3` |
| 4 | `lemma` | [negPart_def](../../../../../../Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/declarations/negpart-def--6f5da298d3a65f09a61fa67b.md) | 51 | `result-track:6f5da298d3a65f09a61fa67b8610e67fe6b2a4639b6f6e06a4250a29ce7c9f10` |
| 5 | `lemma` | [posPart_zero](../../../../../../Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/declarations/pospart-zero--ee61d73f6ba6eac69330c8ef.md) | 54 | `result-track:ee61d73f6ba6eac69330c8ef30b44e94851152af9199ed7469e95b2f53718271` |
| 6 | `lemma` | [negPart_zero](../../../../../../Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/declarations/negpart-zero--5051184387b9a54e8caa03ac.md) | 57 | `result-track:5051184387b9a54e8caa03aca0a8f176034f116e85d56755d942b118b6c42040` |
| 7 | `lemma` | [posPart_eq_zero_of_not_isSelfAdjoint](../../../../../../Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/declarations/pospart-eq-zero-of-not-isselfadjoint--af566d5cb4219f781cec4739.md) | 59 | `result-track:af566d5cb4219f781cec473921e2c3c0a402b197754196883aeb10d647cafaab` |
| 8 | `lemma` | [negPart_eq_zero_of_not_isSelfAdjoint](../../../../../../Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/declarations/negpart-eq-zero-of-not-isselfadjoint--97acc27d74eed1ef4229b2a8.md) | 62 | `result-track:97acc27d74eed1ef4229b2a895e39ad42fb1e14366ba4db2dcc091f1e5474f38` |
| 9 | `lemma` | [posPart_mul_negPart](../../../../../../Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/declarations/pospart-mul-negpart--7de5c7e22b54295e17887552.md) | 66 | `result-track:7de5c7e22b54295e178875521c08dc2ccb0768afb4e1dc33b4031caac3998486` |
| 10 | `lemma` | [negPart_mul_posPart](../../../../../../Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/declarations/negpart-mul-pospart--75a38cbdbc71ae2938bc0b26.md) | 76 | `result-track:75a38cbdbc71ae2938bc0b26501c365e1a109d53bc37c7c4903424a8721b8f41` |
| 11 | `lemma` | [posPart_sub_negPart](../../../../../../Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/declarations/pospart-sub-negpart--43679c2074184e028e91ea11.md) | 85 | `result-track:43679c2074184e028e91ea11a1f20e6dd331311ec561d5b3ebda6c3a84177675` |
| 12 | `lemma` | [posPart_neg](../../../../../../Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/declarations/pospart-neg--1bd96851f756fb9e5dd80867.md) | 97 | `result-track:1bd96851f756fb9e5dd8086728e475fee88a6227e6101442f151e8ef38ae83cb` |
| 13 | `lemma` | [negPart_neg](../../../../../../Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/declarations/negpart-neg--5abe91c73f01612ac6981713.md) | 106 | `result-track:5abe91c73f01612ac6981713251a11c38b9232feeee13b852fe91cc1e0e57378` |
| 14 | `lemma` | [posPart_smul](../../../../../../Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/declarations/pospart-smul--a94f6f84e24d888805bb41a9.md) | 114 | `result-track:a94f6f84e24d888805bb41a9aeaa7167413c21b323ae5df0b25290fb7ba351e7` |
| 15 | `lemma` | [negPart_smul](../../../../../../Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/declarations/negpart-smul--b19fd1361a6e3c2408716f5e.md) | 127 | `result-track:b19fd1361a6e3c2408716f5ea3b3a3eb4b8919a3c7b4d58c4ea30ad28e55cdd1` |
| 16 | `lemma` | [posPart_smul_of_nonneg](../../../../../../Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/declarations/pospart-smul-of-nonneg--56727d7e96bcfcfd49b5b64f.md) | 130 | `result-track:56727d7e96bcfcfd49b5b64f0709a84084503a517fc95b3db89dec717eeb95c1` |
| 17 | `lemma` | [posPart_smul_of_nonpos](../../../../../../Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/declarations/pospart-smul-of-nonpos--24d66d7e58f68e468ce78b7f.md) | 133 | `result-track:24d66d7e58f68e468ce78b7f18457e963eb948633cd7c3fc2ac90bba67908a1b` |
| 18 | `lemma` | [negPart_smul_of_nonneg](../../../../../../Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/declarations/negpart-smul-of-nonneg--80d5323f8eaad5d065b913b3.md) | 137 | `result-track:80d5323f8eaad5d065b913b33c9daab9555a4581c65a6a113934221a86ae66c4` |
| 19 | `lemma` | [negPart_smul_of_nonpos](../../../../../../Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/declarations/negpart-smul-of-nonpos--562d94de8b0b1e75984d6ceb.md) | 140 | `result-track:562d94de8b0b1e75984d6ceb99f90c90bdf290cd76d23f04b54bea284aae830c` |
| 20 | `lemma` | [posPart_nonneg](../../../../../../Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/declarations/pospart-nonneg--d24a1eba98197a0d60d4a708.md) | 150 | `result-track:d24a1eba98197a0d60d4a7085e709df0b8d99d991bfd7901f7ad04ad8d459490` |
| 21 | `lemma` | [negPart_nonneg](../../../../../../Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/declarations/negpart-nonneg--c74341ed2acf4f97575b01bb.md) | 155 | `result-track:c74341ed2acf4f97575b01bb75213ef69f498d83a5ffed3676ecfb4a0cdefe1d` |
| 22 | `instance` | [(anonymous)](../../../../../../Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/declarations/instance--2c2386afe69e58c0331b824f.md) | 159 | `declaration-track:2c2386afe69e58c0331b824fc35f5e78161d4ff5d2779b77bec0c048310f3197` |
| 23 | `lemma` | [posPart_eq_of_eq_sub_negPart](../../../../../../Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/declarations/pospart-eq-of-eq-sub-negpart--b687ac3c2815a25f5dc4559c.md) | 162 | `result-track:b687ac3c2815a25f5dc4559c4951c1fca14ad3f05bf9868e22a5cca61e2c2feb` |
| 24 | `lemma` | [negPart_eq_of_eq_PosPart_sub](../../../../../../Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/declarations/negpart-eq-of-eq-pospart-sub--041acf1f9f2fbee0034739ef.md) | 168 | `result-track:041acf1f9f2fbee0034739efa20d9334eb71e53722cdec58fc9b8ebf8f43f765` |
| 25 | `lemma` | [le_posPart](../../../../../../Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/declarations/le-pospart--47b405f621d46ea7a837e648.md) | 174 | `result-track:47b405f621d46ea7a837e6489f8cbfdf8f47f6f2fbdefb668e8232e35140242a` |
| 26 | `lemma` | [neg_negPart_le](../../../../../../Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/declarations/neg-negpart-le--f7e3305ff5dfe041da7de37a.md) | 177 | `result-track:f7e3305ff5dfe041da7de37a5dfd260102c663725e4a46fba45ef979314b8b6e` |
| 27 | `lemma` | [posPart_eq_self](../../../../../../Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/declarations/pospart-eq-self--436d1e0137e1578cba35b93e.md) | 183 | `result-track:436d1e0137e1578cba35b93ea107519ff510ab22637c5515bf17d90711e43d5f` |
| 28 | `lemma` | [negPart_eq_zero_iff](../../../../../../Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/declarations/negpart-eq-zero-iff--d1831c61c410dfbfd1a501f4.md) | 190 | `result-track:d1831c61c410dfbfd1a501f47784cbe140fca46cfc9c2390900a63c89a516975` |
| 29 | `lemma` | [negPart_eq_neg](../../../../../../Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/declarations/negpart-eq-neg--e613e71d76b0bdcd74b9b639.md) | 196 | `result-track:e613e71d76b0bdcd74b9b639cb5002eaa0937aec4135f5df6e41d78475283cdf` |
| 30 | `lemma` | [posPart_eq_zero_iff](../../../../../../Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/declarations/pospart-eq-zero-iff--4d9ca3b83dcac1cdbd5fe60e.md) | 209 | `result-track:4d9ca3b83dcac1cdbd5fe60e76cad9abfce43f83ebbe6593dbd32a4f13c8b866` |
| 31 | `lemma` | [posPart_negPart_unique](../../../../../../Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/declarations/pospart-negpart-unique--29530b0173d06cc99331cb36.md) | 226 | `result-track:29530b0173d06cc99331cb3677e7cd840358766824597e55bf5d4fe23e8e88a5` |
| 32 | `lemma` | [posPart_one](../../../../../../Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/declarations/pospart-one--2e69c76ef43899e304b70b65.md) | 328 | `result-track:2e69c76ef43899e304b70b656247758578cd1a34f94a717d5d207d310796a149` |
| 33 | `lemma` | [negPart_one](../../../../../../Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/declarations/negpart-one--a4be6bc188b28263ea44ee30.md) | 333 | `result-track:a4be6bc188b28263ea44ee30be434ee108801d3bf45e3f926fe36ac3d438d50c` |
| 34 | `lemma` | [posPart_algebraMap](../../../../../../Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/declarations/pospart-algebramap--5657c56f3c313093026951e7.md) | 338 | `result-track:5657c56f3c313093026951e7fffb4cf59b59b849f5a15e85ffb106937494b5b5` |
| 35 | `lemma` | [negPart_algebraMap](../../../../../../Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/declarations/negpart-algebramap--286a5a4e6ba70210090cceed.md) | 343 | `result-track:286a5a4e6ba70210090cceed40d08d391203b39a7b352bfe99d987c6579d6dfb` |
| 36 | `lemma` | [posPart_algebraMap_nnreal](../../../../../../Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/declarations/pospart-algebramap-nnreal--5a55791f90f60bb936cd5520.md) | 349 | `result-track:5a55791f90f60bb936cd55209689886da7107335d0a92c0768ace812f5313bbe` |
| 37 | `lemma` | [posPart_natCast](../../../../../../Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/declarations/pospart-natcast--4c5e2f2c9719464883fb49fe.md) | 355 | `result-track:4c5e2f2c9719464883fb49fe451ed6ca4c44e95b996266b62328293fdc9086c7` |
| 38 | `lemma` | [CStarAlgebra.linear_combination_nonneg](../../../../../../Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/declarations/cstaralgebra-linear-combination-nonneg--16c38a6d607ec26fffc5c859.md) | 371 | `result-track:16c38a6d607ec26fffc5c85915fd774dc896014b8bcefe290b50de36d2a404d3` |
| 39 | `lemma` | [CStarAlgebra.span_nonneg](../../../../../../Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean/declarations/cstaralgebra-span-nonneg--028723013ed42183bf12f10d.md) | 379 | `result-track:028723013ed42183bf12f10dcefe816086fd02181af05b612bf25a829025ba29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=47e241706e1e601da73609a8a0541b6430eada0dd4471015ea7fb83b2726a4a0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant114eabca5c5b904c992ec14592a52d2c157094a9acd9ae8f89e1176c3548ba35.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
