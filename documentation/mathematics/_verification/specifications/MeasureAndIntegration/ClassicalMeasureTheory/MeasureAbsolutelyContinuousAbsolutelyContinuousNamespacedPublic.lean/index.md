# Verification target: Measure Absolutely Continuous Absolutely Continuous Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "012942dd5941ce637b7a7f5a40452fd299a18000",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureAbsolutelyContinuousAbsolutelyContinuousNamespacedPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureAbsolutelyContinuousAbsolutelyContinuousNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `012942dd5941ce637b7a7f5a40452fd299a18000`.

Source path: `GRWTSK/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AbsolutelyContinuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureAbsolutelyContinuousAbsolutelyContinuousNamespacedPublic.lean/declarations/absolutelycontinuous.md) | 58 | `declaration-track:d1acf9f9865ebbb75c0852260352c59b4d99b9a56bd9c2ae1aa364d5491bf09b` |
| 2 | `theorem` | [absolutelyContinuous_of_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureAbsolutelyContinuousAbsolutelyContinuousNamespacedPublic.lean/declarations/absolutelycontinuous-of-le.md) | 64 | `result-track:273ee7e240b0a20b405363cbbaa890bc62734966af5a441d41575456a48529e4` |
| 3 | `theorem` | [absolutelyContinuous_of_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureAbsolutelyContinuousAbsolutelyContinuousNamespacedPublic.lean/declarations/absolutelycontinuous-of-eq.md) | 69 | `result-track:23aefddec11d754bd97a47a4530b12f3c01cde107c55f369e267429ed5e81004` |
| 4 | `theorem` | [mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureAbsolutelyContinuousAbsolutelyContinuousNamespacedPublic.lean/declarations/mk.md) | 76 | `result-track:918bc4b1f8a5349a1248a5b0bcdd31f7b22102fb619e33ff6840b4e6a1a86870` |
| 5 | `theorem` | [refl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureAbsolutelyContinuousAbsolutelyContinuousNamespacedPublic.lean/declarations/refl.md) | 82 | `result-track:54763310185da170ea13f60b7f6c3ecf7fbfb02fb3f5ddef41bbfe327cc63e59` |
| 6 | `theorem` | [rfl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureAbsolutelyContinuousAbsolutelyContinuousNamespacedPublic.lean/declarations/rfl.md) | 85 | `result-track:298e8ff2abfa5b7dcf1985f53ab005303e4546ae23bf395680a478a03ccc1818` |
| 7 | `instance` | [instRefl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureAbsolutelyContinuousAbsolutelyContinuousNamespacedPublic.lean/declarations/instrefl.md) | 87 | `declaration-track:64c7541abbdc8a0a1ba7b5ae27aa717f27e91596e6fee34ab18971f614d1133e` |
| 8 | `lemma` | [zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureAbsolutelyContinuousAbsolutelyContinuousNamespacedPublic.lean/declarations/zero.md) | 91 | `result-track:fd002516ef8ecc67ce8e015cb149f0c271c9f76186c730612dcbb5dd1d6cc53c` |
| 9 | `theorem` | [trans](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureAbsolutelyContinuousAbsolutelyContinuousNamespacedPublic.lean/declarations/trans.md) | 94 | `result-track:16510cf73724edbac54df9fdc2124867af75518c4231e9e973183a0ecf57acb7` |
| 10 | `theorem` | [map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureAbsolutelyContinuousAbsolutelyContinuousNamespacedPublic.lean/declarations/map.md) | 97 | `result-track:6101819ec2e3464d98925e297af8951bdd83a5e60e1bddb6c4b3bee09d788635` |
| 11 | `theorem` | [smul_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureAbsolutelyContinuousAbsolutelyContinuousNamespacedPublic.lean/declarations/smul-left.md) | 100 | `result-track:612b0dc5c76ce9ea018f9536ef001c9fd559c774b732b4155bcafcd64dae0bda` |
| 12 | `theorem` | [smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureAbsolutelyContinuousAbsolutelyContinuousNamespacedPublic.lean/declarations/smul.md) | 107 | `result-track:a545dfaa533a7f0149dfbd753dc2e19a5ed3e08949b0d7c1147dd716b6bce74e` |
| 13 | `lemma` | [add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureAbsolutelyContinuousAbsolutelyContinuousNamespacedPublic.lean/declarations/add.md) | 113 | `result-track:6da9d9eef51a47770c480797ff8c36e9d282ff4bfeff688e5dc554fc61b58d7a` |
| 14 | `lemma` | [add_left_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureAbsolutelyContinuousAbsolutelyContinuousNamespacedPublic.lean/declarations/add-left-iff.md) | 118 | `result-track:07d44ea59ce5cd9d8ba675524143b649b3a3a0d06c52cbda0f1a565784478286` |
| 15 | `lemma` | [add_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureAbsolutelyContinuousAbsolutelyContinuousNamespacedPublic.lean/declarations/add-left.md) | 126 | `result-track:04a9592ed9d9206c7cbcf5e6321233ce5d2b994c92af17cf0f4c3c8d9917c6a3` |
| 16 | `lemma` | [add_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureAbsolutelyContinuousAbsolutelyContinuousNamespacedPublic.lean/declarations/add-right.md) | 129 | `result-track:245451b2a1f075f5e48a8e6effcb208a4b793b21d902a72b4898eaf7efea7ece` |
| 17 | `lemma` | [add_right'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureAbsolutelyContinuousAbsolutelyContinuousNamespacedPublic.lean/declarations/add-right-source-edition-2.md) | 134 | `result-track:546f82e3d6ea2441a2526c6aca64ca65088035beceaf23aadec517b6b04e9e4d` |
| 18 | `lemma` | [null_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureAbsolutelyContinuousAbsolutelyContinuousNamespacedPublic.lean/declarations/null-mono.md) | 137 | `result-track:26fd133163492b94da71e887a6f3fa605554df3034ad02047dcd7426b181fb63` |
| 19 | `lemma` | [pos_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureAbsolutelyContinuousAbsolutelyContinuousNamespacedPublic.lean/declarations/pos-mono.md) | 141 | `result-track:72f1303c0266e63601b8c9cdcd22446ee106af9a1ac5a23e9c9a7015902f65af` |
| 20 | `lemma` | [absolutelyContinuous_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureAbsolutelyContinuousAbsolutelyContinuousNamespacedPublic.lean/declarations/absolutelycontinuous-zero-iff.md) | 149 | `result-track:f8b49b51b80998e817331ba07552298c8c186d5253f6a86d35f89eb77a91300f` |
| 21 | `lemma` | [absolutelyContinuous_sum_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureAbsolutelyContinuousAbsolutelyContinuousNamespacedPublic.lean/declarations/absolutelycontinuous-sum-left.md) | 155 | `result-track:60a406f6d94425f22d5cf3a93b4cdd2484be34994fd931d1b7595fc02c5e6df8` |
| 22 | `lemma` | [absolutelyContinuous_sum_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureAbsolutelyContinuousAbsolutelyContinuousNamespacedPublic.lean/declarations/absolutelycontinuous-sum-right.md) | 159 | `result-track:59066998018295fe69d5295c8895d2e4621152b0b4f1aac3281ec37f1c836d68` |
| 23 | `lemma` | [smul_absolutelyContinuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureAbsolutelyContinuousAbsolutelyContinuousNamespacedPublic.lean/declarations/smul-absolutelycontinuous.md) | 165 | `result-track:7c5cf3ebe826811f5574f2231934f3c2eae7fd1b7efd8ecec4b4cfddf28850c1` |
| 24 | `theorem` | [absolutelyContinuous_of_le_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureAbsolutelyContinuousAbsolutelyContinuousNamespacedPublic.lean/declarations/absolutelycontinuous-of-le-smul.md) | 167 | `result-track:70315d7b1e706756d158f2b36aa3bae343e284906edeb22c8fec21996ceeb8c0` |
| 25 | `lemma` | [absolutelyContinuous_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureAbsolutelyContinuousAbsolutelyContinuousNamespacedPublic.lean/declarations/absolutelycontinuous-smul.md) | 171 | `result-track:db54848289940fb5536823fff52a7f2c52a084fa43bba94dc2a7f555a213e68e` |
| 26 | `lemma` | [AbsolutelyContinuous.smul_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureAbsolutelyContinuousAbsolutelyContinuousNamespacedPublic.lean/declarations/absolutelycontinuous-smul-right.md) | 174 | `result-track:1d1c69e72cad9a47aa51348f99fb6d4b09cde656424f0f871f431325574401f7` |
| 27 | `theorem` | [ae_le_iff_absolutelyContinuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureAbsolutelyContinuousAbsolutelyContinuousNamespacedPublic.lean/declarations/ae-le-iff-absolutelycontinuous.md) | 177 | `result-track:017ea164f46baf26f7b8ef1342791649ecf58c122bdd8b67cbb1790144afd625` |
| 28 | `theorem` | [AbsolutelyContinuous.ae_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureAbsolutelyContinuousAbsolutelyContinuousNamespacedPublic.lean/declarations/absolutelycontinuous-ae-eq.md) | 187 | `result-track:8d720ee962b4efecb029bd25e316068fc859adc3b3e77a0a2f468195443995af` |
| 29 | `theorem` | [AEDisjoint.of_absolutelyContinuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureAbsolutelyContinuousAbsolutelyContinuousNamespacedPublic.lean/declarations/aedisjoint-of-absolutelycontinuous.md) | 192 | `result-track:5c34c2ab6fbbef5ce60f5a18e7349f2698eddf2152db450680ae93753c32b0ac` |
| 30 | `theorem` | [NullMeasurableSet.mono_ac](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureAbsolutelyContinuousAbsolutelyContinuousNamespacedPublic.lean/declarations/nullmeasurableset-mono-ac.md) | 196 | `result-track:8f16bebb97bc5aa20102d4f9d3f9bbf8e94f2c73e53c3553799c30c7fd90389e` |
| 31 | `theorem` | [ae_eq_comp'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureAbsolutelyContinuousAbsolutelyContinuousNamespacedPublic.lean/declarations/ae-eq-comp-source-edition-2.md) | 201 | `result-track:f8790e5b18c827120396f14fc2acbd08288aeba05784f2e8da0158c793196a6a` |
| 32 | `theorem` | [ae_eq_comp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureAbsolutelyContinuousAbsolutelyContinuousNamespacedPublic.lean/declarations/ae-eq-comp.md) | 205 | `result-track:d90cea72b1dd6efb05dd90efda9d0f19a87974b8a6742c4bbd1a674e0db1ec87` |
| 33 | `lemma` | [absolutelyContinuous_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureAbsolutelyContinuousAbsolutelyContinuousNamespacedPublic.lean/declarations/absolutelycontinuous-map.md) | 217 | `result-track:dedeaa332e44f4bea89dfcde8de61e1b0267ad50a53afe29774976400ff180fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=46f6aad515823548327e26aae9dc5ee0b64c68b5f4189c1c6fd2f500466fc923 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/AbsolutelyContinuous/Variant2444e409e77efd7b9ba3dea6f4e04e9fcce740288b0ef12a5380cd238b07ac6c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
