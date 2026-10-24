# Verification target: GRWTSK.Topology.GeometricTopology.EmbeddingProblems.Isotopy.AmbientExtension.Variant5dff998f.SurgeryNaturality

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92a111e9d13607529ab3c159ace770790f159fd9",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeometricTopology/EmbeddingProblems/Isotopy/AmbientExtension/Variant5dff998f/SurgeryNaturality.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/Topology/GeometricTopology/EmbeddingProblems/Isotopy/AmbientExtension/Variant5dff998f/SurgeryNaturality.lean/index.md) · [Full source](../../../../../../../../mathematics/Topology/GeometricTopology/EmbeddingProblems/Isotopy/AmbientExtension/Variant5dff998f/SurgeryNaturality.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92a111e9d13607529ab3c159ace770790f159fd9`.

Source path: `GRWTSK/Topology/GeometricTopology/EmbeddingProblems/Isotopy/AmbientExtension/Variant5dff998f/SurgeryNaturality.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeometricTopology/EmbeddingProblems/Isotopy/AmbientExtension/Variant5dff998f/SurgeryNaturality.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.SmoothFramedSurgery.CollaredGluing` — import line 25; external provider; requires a separately pinned dependency.
- [`GRWTSK.Topology.GeometricTopology.EmbeddingProblems.Isotopy.AmbientExtension.Variant5dff998f.Theory`](../../../../../../../../mathematics/Topology/GeometricTopology/EmbeddingProblems/Isotopy/AmbientExtension/Variant5dff998f/Theory.lean/index.md) — import line 26; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [surgeryEnd_eq_induced](../../../../../../../../mathematics/Topology/GeometricTopology/EmbeddingProblems/Isotopy/AmbientExtension/Variant5dff998f/SurgeryNaturality.lean/declarations/surgeryend-eq-induced--a91a567e82b71c096bb50791.md) | 62 | `result-track:a91a567e82b71c096bb507910ce634a6185e93a86fc0b3dc0612bf427bbf1e08` |
| 2 | `theorem` | [surgery_invariant](../../../../../../../../mathematics/Topology/GeometricTopology/EmbeddingProblems/Isotopy/AmbientExtension/Variant5dff998f/SurgeryNaturality.lean/declarations/surgery-invariant--0dceff8ee860726d3f0b404b.md) | 71 | `result-track:0dceff8ee860726d3f0b404b4eb117bfd92acec9510aba158995af967c48ac25` |
| 3 | `theorem` | [surgeryEnd_reverse](../../../../../../../../mathematics/Topology/GeometricTopology/EmbeddingProblems/Isotopy/AmbientExtension/Variant5dff998f/SurgeryNaturality.lean/declarations/surgeryend-reverse--de933ff4920a7d0f802038f5.md) | 79 | `result-track:de933ff4920a7d0f802038f5279419124debd395b869641077cd22aed51823be` |
| 4 | `theorem` | [surgeryEnd_concat](../../../../../../../../mathematics/Topology/GeometricTopology/EmbeddingProblems/Isotopy/AmbientExtension/Variant5dff998f/SurgeryNaturality.lean/declarations/surgeryend-concat--d886da1670721caf0e72e78a.md) | 87 | `result-track:d886da1670721caf0e72e78a477b4b982542bec48e6ef461e984c07aa1250cdb` |
| 5 | `theorem` | [ambientEnd_identity](../../../../../../../../mathematics/Topology/GeometricTopology/EmbeddingProblems/Isotopy/AmbientExtension/Variant5dff998f/SurgeryNaturality.lean/declarations/ambientend-identity--f32f0e654b8066da62188ac0.md) | 98 | `result-track:f32f0e654b8066da62188ac04d5d1887c9007a580251ad018a4b390f72e156c9` |
| 6 | `theorem` | [surgeryEnd_identity](../../../../../../../../mathematics/Topology/GeometricTopology/EmbeddingProblems/Isotopy/AmbientExtension/Variant5dff998f/SurgeryNaturality.lean/declarations/surgeryend-identity--afaaaef082873c51b593290e.md) | 106 | `result-track:afaaaef082873c51b593290ec15c27fe22e0a053e15f0771749c6f131b1d98c5` |
| 7 | `theorem` | [ambientEnd_reverse](../../../../../../../../mathematics/Topology/GeometricTopology/EmbeddingProblems/Isotopy/AmbientExtension/Variant5dff998f/SurgeryNaturality.lean/declarations/ambientend-reverse--d22278d90b25dae7616d207d.md) | 113 | `result-track:d22278d90b25dae7616d207da4323c61b4d36dec2b721af9a45ae2a0b86feca8` |
| 8 | `theorem` | [ambientEnd_concat](../../../../../../../../mathematics/Topology/GeometricTopology/EmbeddingProblems/Isotopy/AmbientExtension/Variant5dff998f/SurgeryNaturality.lean/declarations/ambientend-concat--44f970f3f1469fb506a8b079.md) | 121 | `result-track:44f970f3f1469fb506a8b07989f78b738e42d0bea7571658cdcfea5a4f0d48cd` |
| 9 | `theorem` | [invariant_eq](../../../../../../../../mathematics/Topology/GeometricTopology/EmbeddingProblems/Isotopy/AmbientExtension/Variant5dff998f/SurgeryNaturality.lean/declarations/invariant-eq--9846f5504f46bfb08fc3d36a.md) | 131 | `result-track:9846f5504f46bfb08fc3d36af68570586156b21a968d7b57b94ca24bc959925a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
