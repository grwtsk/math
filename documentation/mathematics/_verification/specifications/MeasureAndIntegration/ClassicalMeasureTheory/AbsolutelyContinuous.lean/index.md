# Verification target: Absolutely Continuous

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08fe04760740d0affbb02db3a05de4535658658e",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AbsolutelyContinuous/Variant251dd7d2c6622293fae61e91ed1195b7722b3475fc1ed810083d6c6b5027e8fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AbsolutelyContinuous.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AbsolutelyContinuous.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08fe04760740d0affbb02db3a05de4535658658e`.

Source path: `GRWTSK/Analysis/MeasureTheory/AbsolutelyContinuous/Variant251dd7d2c6622293fae61e91ed1195b7722b3475fc1ed810083d6c6b5027e8fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AbsolutelyContinuous/Variant251dd7d2c6622293fae61e91ed1195b7722b3475fc1ed810083d6c6b5027e8fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Map` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AbsolutelyContinuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AbsolutelyContinuous.lean/declarations/absolutelycontinuous.md) | 45 | `declaration-track:8661fc5cd2ccc234a234ff77473a7c00cc85df938dda84db88e04944980d5f93` |
| 2 | `theorem` | [absolutelyContinuous_of_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AbsolutelyContinuous.lean/declarations/absolutelycontinuous-of-le.md) | 51 | `result-track:4d77943edec35be2c9b8576ee2cb8507e7de5c12135195c5067f9346f14a32c5` |
| 3 | `theorem` | [absolutelyContinuous_of_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AbsolutelyContinuous.lean/declarations/absolutelycontinuous-of-eq.md) | 56 | `result-track:c5b5f7e57b09f9188a949d1ed3e10801b3e5fe05218a40e711cbb5794fb8f1ff` |
| 4 | `theorem` | [mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AbsolutelyContinuous.lean/declarations/mk.md) | 63 | `result-track:202d4d7e867f59b95fd29199dd2b9cb41dbec3994d7366b48f321af14455c53d` |
| 5 | `theorem` | [refl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AbsolutelyContinuous.lean/declarations/refl.md) | 69 | `result-track:03abbfbc20f55b817448a4c9e170cfd04c2a3491c10eb1c0bca7c340f85d1716` |
| 6 | `theorem` | [rfl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AbsolutelyContinuous.lean/declarations/rfl.md) | 72 | `result-track:24432d7b489d78e604023dfe0f2bc2438619644b9238bb267d1bfef5052fee99` |
| 7 | `instance` | [instIsRefl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AbsolutelyContinuous.lean/declarations/instisrefl.md) | 74 | `declaration-track:17545d611d72d04be4b4ea715ba598c7c1501524f7dd3d392955aa7d1cee766a` |
| 8 | `lemma` | [zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AbsolutelyContinuous.lean/declarations/zero.md) | 78 | `result-track:4dbe18d997d133971a4cf1ffb9e3b922b9276c2afbc20f191a6aef02af973308` |
| 9 | `theorem` | [trans](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AbsolutelyContinuous.lean/declarations/trans.md) | 81 | `result-track:be51a19bb0cd65a59d36653c8930708caae4618da767f4dfa0decc4c663618d9` |
| 10 | `theorem` | [map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AbsolutelyContinuous.lean/declarations/map.md) | 84 | `result-track:eb669bd3952f53b01c7235698c68ade0b164db30d3fa090bfbc357518fea2ce2` |
| 11 | `theorem` | [smul_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AbsolutelyContinuous.lean/declarations/smul-left.md) | 87 | `result-track:a5d7fcb0058ffdd612c3f1053ea5a4177372b1749b360349f11a10ac8f1a0256` |
| 12 | `theorem` | [smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AbsolutelyContinuous.lean/declarations/smul.md) | 94 | `result-track:4199f82d5ea0e53b42bf8421c6a3683ee7f452e1cae34cdac98c5384908a3776` |
| 13 | `lemma` | [add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AbsolutelyContinuous.lean/declarations/add.md) | 102 | `result-track:02dd08c5353581e8ea762d49f5343ef21d906e6b580d3d2cf26b6e113e11da23` |
| 14 | `lemma` | [add_left_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AbsolutelyContinuous.lean/declarations/add-left-iff.md) | 107 | `result-track:0cb65b13bdc6a1e34991513894e6261fc273840170dae182b5b7c77133660873` |
| 15 | `lemma` | [add_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AbsolutelyContinuous.lean/declarations/add-left.md) | 115 | `result-track:efed9db0eccd89638cc580d53465900bbd68a8401a5ae010a47d6efb97b6df18` |
| 16 | `lemma` | [add_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AbsolutelyContinuous.lean/declarations/add-right.md) | 118 | `result-track:dde7a38dadaac73290938af18550c7d3129b00ab2be6033195312693993aa944` |
| 17 | `lemma` | [absolutelyContinuous_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AbsolutelyContinuous.lean/declarations/absolutelycontinuous-zero-iff.md) | 126 | `result-track:98334f782b370b1629f30b22c1a5320668ccdd551c45f38115b3dcd9b787f2fd` |
| 18 | `lemma` | [absolutelyContinuous_sum_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AbsolutelyContinuous.lean/declarations/absolutelycontinuous-sum-left.md) | 132 | `result-track:c499feab9ddfddbca7010d9bc5aeee9aea1e2223001b03367c07e1af6ad4763d` |
| 19 | `lemma` | [absolutelyContinuous_sum_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AbsolutelyContinuous.lean/declarations/absolutelycontinuous-sum-right.md) | 136 | `result-track:74511019a28ea4ee7e7d36e419dd9b661e20639c2289c1f30d57295ad7945724` |
| 20 | `lemma` | [smul_absolutelyContinuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AbsolutelyContinuous.lean/declarations/smul-absolutelycontinuous.md) | 142 | `result-track:c3fcadaaf4d89786b8b44bb6962d8c10505adf8a730b625446c2e7add7f5ae3d` |
| 21 | `theorem` | [absolutelyContinuous_of_le_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AbsolutelyContinuous.lean/declarations/absolutelycontinuous-of-le-smul.md) | 144 | `result-track:b9a4ae2849eafcc9ac8cec652e514e4d665def917380b9e892af0a7816f286e8` |
| 22 | `lemma` | [absolutelyContinuous_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AbsolutelyContinuous.lean/declarations/absolutelycontinuous-smul.md) | 148 | `result-track:9487d35b3eb01778a7653f06dfba90845134b09a52587c340c4115733d4021c5` |
| 23 | `theorem` | [ae_le_iff_absolutelyContinuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AbsolutelyContinuous.lean/declarations/ae-le-iff-absolutelycontinuous.md) | 151 | `result-track:c969689d1a2ac41d00c4e0602ff824bc0a4b9d887c672c1ac932d7b952592112` |
| 24 | `theorem` | [AbsolutelyContinuous.ae_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AbsolutelyContinuous.lean/declarations/absolutelycontinuous-ae-eq.md) | 161 | `result-track:b719fad3a92108a014f13b422f231219afc24ea2e7d622a8cab9edc43af67f85` |
| 25 | `theorem` | [AEDisjoint.of_absolutelyContinuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AbsolutelyContinuous.lean/declarations/aedisjoint-of-absolutelycontinuous.md) | 166 | `result-track:be29bc9e987876a1a9e7bc1921a651702cb960aaa71b0f2001b4f7a6aa9f5cb9` |
| 26 | `theorem` | [AEDisjoint.of_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AbsolutelyContinuous.lean/declarations/aedisjoint-of-le.md) | 170 | `result-track:3dc184bce99cf1bf498723bf42ff0cb2e17ee0185b01e6254ea3d759c40f57d9` |
| 27 | `theorem` | [ae_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AbsolutelyContinuous.lean/declarations/ae-mono.md) | 176 | `result-track:ad720c56d9cbf61d56262ed041cb9bacbbd6cafc1ccd0804afe9dd8ea1e2b375` |
| 28 | `lemma` | [absolutelyContinuous_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AbsolutelyContinuous.lean/declarations/absolutelycontinuous-map.md) | 187 | `result-track:f6b46b16fc7641d7e16f3d16fc3e0e4dd1a4ed39d82794bda3039ecc6a17d781` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fe21e1527290be13132aa0ed5ec9962a4e143fe7a6d56ec467ff14dd27e4d2d0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/AbsolutelyContinuous/Variant251dd7d2c6622293fae61e91ed1195b7722b3475fc1ed810083d6c6b5027e8fe.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/AbsolutelyContinuous/Variant251dd7d2c6622293fae61e91ed1195b7722b3475fc1ed810083d6c6b5027e8fe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
