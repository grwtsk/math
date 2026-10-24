# Verification target: GRWTSK.Topology.GeneralTopology.Rolle.Variante564a973aafda91d3c05db9c9716d020121ba2175f9eab57fee129f19b9d2e95

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2ca4cbf52730b4eadf33dc94640bdc6dd47a0e6",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Rolle/Variante564a973aafda91d3c05db9c9716d020121ba2175f9eab57fee129f19b9d2e95.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Rolle/Variante564a973aafda91d3c05db9c9716d020121ba2175f9eab57fee129f19b9d2e95.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Rolle/Variante564a973aafda91d3c05db9c9716d020121ba2175f9eab57fee129f19b9d2e95.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2ca4cbf52730b4eadf33dc94640bdc6dd47a0e6`.

Source path: `GRWTSK/Topology/GeneralTopology/Rolle/Variante564a973aafda91d3c05db9c9716d020121ba2175f9eab57fee129f19b9d2e95.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Rolle/Variante564a973aafda91d3c05db9c9716d020121ba2175f9eab57fee129f19b9d2e95.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_Ioo_extr_on_Icc](../../../../../mathematics/Topology/GeneralTopology/Rolle/Variante564a973aafda91d3c05db9c9716d020121ba2175f9eab57fee129f19b9d2e95.lean/declarations/exists-ioo-extr-on-icc--b9b6813700af2b7494ba5c0a.md) | 48 | `result-track:b9b6813700af2b7494ba5c0afcdbbffe7b35b386dce757482448cd17639e730c` |
| 2 | `theorem` | [exists_isLocalExtr_Ioo](../../../../../mathematics/Topology/GeneralTopology/Rolle/Variante564a973aafda91d3c05db9c9716d020121ba2175f9eab57fee129f19b9d2e95.lean/declarations/exists-islocalextr-ioo--fb3713e438d5fa688d0e248f.md) | 70 | `result-track:fb3713e438d5fa688d0e248fcbb3f198fb71036fbe6400786ce96bb6ff604077` |
| 3 | `lemma` | [exists_isExtrOn_Ioo_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/Rolle/Variante564a973aafda91d3c05db9c9716d020121ba2175f9eab57fee129f19b9d2e95.lean/declarations/exists-isextron-ioo-of-tendsto--b32f8f8aaf366d49d5731356.md) | 77 | `result-track:b32f8f8aaf366d49d573135612e648a3de17b4c971d7b350280df45bb575f80e` |
| 4 | `lemma` | [exists_isLocalExtr_Ioo_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/Rolle/Variante564a973aafda91d3c05db9c9716d020121ba2175f9eab57fee129f19b9d2e95.lean/declarations/exists-islocalextr-ioo-of-tendsto--a189da4eacab95769105d013.md) | 89 | `result-track:a189da4eacab95769105d0137ed77f16c70741b634804ec9203253f2c02b5385` |
| 5 | `theorem` | [exists_uIoo_isExtrOn_uIcc](../../../../../mathematics/Topology/GeneralTopology/Rolle/Variante564a973aafda91d3c05db9c9716d020121ba2175f9eab57fee129f19b9d2e95.lean/declarations/exists-uioo-isextron-uicc--67ba952e480e44f54033444a.md) | 97 | `result-track:67ba952e480e44f54033444ae836896b1f4c3ea4ea0d1afa02c2ecbcca075a4c` |
| 6 | `theorem` | [exists_isLocalExtr_uIoo](../../../../../mathematics/Topology/GeneralTopology/Rolle/Variante564a973aafda91d3c05db9c9716d020121ba2175f9eab57fee129f19b9d2e95.lean/declarations/exists-islocalextr-uioo--6cbdce3d8efbed5d9414d89c.md) | 104 | `result-track:6cbdce3d8efbed5d9414d89ce7d1d1cf89b416ba7c9880a780bfa259a194de88` |
| 7 | `lemma` | [exists_isExtrOn_uIoo_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/Rolle/Variante564a973aafda91d3c05db9c9716d020121ba2175f9eab57fee129f19b9d2e95.lean/declarations/exists-isextron-uioo-of-tendsto--8afc8ca1ad205b85952e7c61.md) | 111 | `result-track:8afc8ca1ad205b85952e7c61f4cb759b9c6783e044b98a476655303a4a93b6be` |
| 8 | `lemma` | [exists_isLocalExtr_uIoo_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/Rolle/Variante564a973aafda91d3c05db9c9716d020121ba2175f9eab57fee129f19b9d2e95.lean/declarations/exists-islocalextr-uioo-of-tendsto--88bdbaf0fbbdb065c8d28ce6.md) | 123 | `result-track:88bdbaf0fbbdb065c8d28ce65c8cc420825d2b19b81c3ddc4876769ead344bbe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
