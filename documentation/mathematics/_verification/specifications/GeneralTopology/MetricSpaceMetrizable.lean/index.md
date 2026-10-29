# Verification target: Metric Space Metrizable

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56bfc5bd431e1d7cfd3219c8f7cf92e610df378a",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Metrizable/Variant399d8e235c04fe10a63184b4129fd20bcfdc46b90f03687c01a85fab0f2b9f79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/MetricSpaceMetrizable.lean/index.md) · [Full source](../../../../GeneralTopology/MetricSpaceMetrizable.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56bfc5bd431e1d7cfd3219c8f7cf92e610df378a`.

Source path: `GRWTSK/Topology/GeneralTopology/Metrizable/Variant399d8e235c04fe10a63184b4129fd20bcfdc46b90f03687c01a85fab0f2b9f79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Metrizable/Variant399d8e235c04fe10a63184b4129fd20bcfdc46b90f03687c01a85fab0f2b9f79.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecificLimits.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UrysohnsLemma` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Bounded` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Cauchy` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PseudoMetrizableSpace](../../../../GeneralTopology/MetricSpaceMetrizable.lean/declarations/pseudometrizablespace.md) | 38 | `declaration-track:fe2ba1550bcfc0c151f60d46bfd1d32e42fb5744d00bbacab4f826a022c140e8` |
| 2 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceMetrizable.lean/declarations/instance-source-edition-5.md) | 42 | `declaration-track:b27bccc7857b6e6962a023998998e06d4b7d7967b8d36d5e11be884a24a84bb2` |
| 3 | `def` | [pseudoMetrizableSpacePseudoMetric](../../../../GeneralTopology/MetricSpaceMetrizable.lean/declarations/pseudometrizablespacepseudometric.md) | 48 | `declaration-track:0794c0a213b25ab140504e589b328c9e3376b6db1a32233bcc38b5f6f45b8892` |
| 4 | `instance` | [pseudoMetrizableSpace_prod](../../../../GeneralTopology/MetricSpaceMetrizable.lean/declarations/pseudometrizablespace-prod.md) | 53 | `declaration-track:155df899e7a6ad57854fa22f2b8f8e6fcaf718ec2a7b7e7f0cfe08cd9dd41f07` |
| 5 | `theorem` | [_root_.Inducing.pseudoMetrizableSpace](../../../../GeneralTopology/MetricSpaceMetrizable.lean/declarations/root-inducing-pseudometrizablespace.md) | 62 | `result-track:46d728c57cf6dfc617f7b466b22341a24263dc311996dd5f4691d62fc0e24f79` |
| 6 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceMetrizable.lean/declarations/instance-source-edition-2.md) | 69 | `declaration-track:5f76191dbc81ac1d47be5b0b29f55a3d1a8b6c4043cb0b760c02cb83b7415eb1` |
| 7 | `instance` | [PseudoMetrizableSpace.subtype](../../../../GeneralTopology/MetricSpaceMetrizable.lean/declarations/pseudometrizablespace-subtype.md) | 77 | `declaration-track:74bbc50e4d967c465b919465ace7668028897f686f0b2c51c92903212639101d` |
| 8 | `instance` | [pseudoMetrizableSpace_pi](../../../../GeneralTopology/MetricSpaceMetrizable.lean/declarations/pseudometrizablespace-pi.md) | 82 | `declaration-track:6f7ee3c03cf1364ba8e7fc46a5d9882c49af2599abeac78bce8ff4d9d9e14a87` |
| 9 | `class` | [MetrizableSpace](../../../../GeneralTopology/MetricSpaceMetrizable.lean/declarations/metrizablespace.md) | 92 | `declaration-track:5ee0b18734e3e1da3cddac391171f92e486fe865eb6fe174b1c12d4677e6befa` |
| 10 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceMetrizable.lean/declarations/instance-source-edition-4.md) | 96 | `declaration-track:aeb26b30d23706524b06968773c65aa98afa75520bfbaab8f342456f64f7f6be` |
| 11 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceMetrizable.lean/declarations/instance.md) | 101 | `declaration-track:51d02d3dfc331ae4133b308a47a8b8a52ced5b56c8095b198c7d0f1c1cb16a4f` |
| 12 | `def` | [metrizableSpaceMetric](../../../../GeneralTopology/MetricSpaceMetrizable.lean/declarations/metrizablespacemetric.md) | 108 | `declaration-track:89100482257e092f69b500ddba8ce3a51824bc21d1889616b938efe5ba9daf35` |
| 13 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceMetrizable.lean/declarations/instance-source-edition-3.md) | 113 | `declaration-track:9f902d84c0e0bf1f5e1e31e0124f3383fca58e42c104df4656da4e97e86682c0` |
| 14 | `instance` | [metrizableSpace_prod](../../../../GeneralTopology/MetricSpaceMetrizable.lean/declarations/metrizablespace-prod.md) | 118 | `declaration-track:ad5ae5ef2cd8c4eae0f4430dd8cc41e441362e9f0ca9831812c2289b10892887` |
| 15 | `theorem` | [_root_.Embedding.metrizableSpace](../../../../GeneralTopology/MetricSpaceMetrizable.lean/declarations/root-embedding-metrizablespace.md) | 126 | `result-track:99b7b4aa6fedd56b092623f1132223854cb8067666c82ae727c21ed13d80a93d` |
| 16 | `instance` | [MetrizableSpace.subtype](../../../../GeneralTopology/MetricSpaceMetrizable.lean/declarations/metrizablespace-subtype.md) | 132 | `declaration-track:490b9a69b2e7a5495b01e7bfa4a5fbfe4253e818c4757a266ab634e55262fd0a` |
| 17 | `instance` | [metrizableSpace_pi](../../../../GeneralTopology/MetricSpaceMetrizable.lean/declarations/metrizablespace-pi.md) | 136 | `declaration-track:3898d775b827de8cf1c2289ac1e5a0e8ce02b9759632f5390361c2becc5378be` |
| 18 | `theorem` | [IsSeparable.secondCountableTopology](../../../../GeneralTopology/MetricSpaceMetrizable.lean/declarations/isseparable-secondcountabletopology.md) | 142 | `result-track:6cb69293daadef86fcbb7b2ed046fcf2e19372da34fb03ff0b64ca211e76858b` |
| 19 | `theorem` | [exists_embedding_l_infty](../../../../GeneralTopology/MetricSpaceMetrizable.lean/declarations/exists-embedding-l-infty.md) | 152 | `result-track:d08fa8942a9c1d58943ccf6f93a5e8ac89efd2db87e590106d07fc8bd3cb015c` |
| 20 | `theorem` | [metrizableSpace_of_t3_second_countable](../../../../GeneralTopology/MetricSpaceMetrizable.lean/declarations/metrizablespace-of-t3-second-countable.md) | 238 | `result-track:ec642c9295d725f925fb2dbb09435f185a978ca85bcda2bc275b90d4ccdf36db` |
| 21 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceMetrizable.lean/declarations/instance-source-edition-6.md) | 243 | `declaration-track:e7c079c98cdf6938f373b8cd35b1fc5dd08bc0ae99edb16adcda02d70c90d4e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=640abe25cd53d91ac549dd0dea6e62cf64685ad69f68dda88115da3703e36e0c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Metrizable/Variant399d8e235c04fe10a63184b4129fd20bcfdc46b90f03687c01a85fab0f2b9f79.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Metrizable/Variant399d8e235c04fe10a63184b4129fd20bcfdc46b90f03687c01a85fab0f2b9f79.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
