# Verification target: Holder Norm

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6326d85a126fd595424f796ebb2116eb4871747c",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/HolderNorm/Varianta613732e5c32b2ad0b3f61a15aac81bf72557a315270495b3d390abf8cbeee2d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/HolderNorm.lean/index.md) · [Full source](../../../../GeneralTopology/HolderNorm.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6326d85a126fd595424f796ebb2116eb4871747c`.

Source path: `GRWTSK/Topology/MetricTopology/HolderNorm/Varianta613732e5c32b2ad0b3f61a15aac81bf72557a315270495b3d390abf8cbeee2d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/HolderNorm/Varianta613732e5c32b2ad0b3f61a15aac81bf72557a315270495b3d390abf8cbeee2d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Holder` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eHolderNorm](../../../../GeneralTopology/HolderNorm.lean/declarations/eholdernorm.md) | 47 | `declaration-track:22d93f894f25db98bc071beb145b91069a592c86e8128ba095598845d301bfdf` |
| 2 | `def` | [nnHolderNorm](../../../../GeneralTopology/HolderNorm.lean/declarations/nnholdernorm.md) | 51 | `declaration-track:0b30d53f19d6c023dfe17cfec2c1a4eb15a7900c65f78f4b0bbce04bb06b73e7` |
| 3 | `def` | [MemHolder](../../../../GeneralTopology/HolderNorm.lean/declarations/memholder.md) | 56 | `declaration-track:c256a0f83387eafc0874f76fbe6b98f7fdd0cfb5de707de090cf81eecbbba0d2` |
| 4 | `lemma` | [HolderWith.memHolder](../../../../GeneralTopology/HolderNorm.lean/declarations/holderwith-memholder.md) | 58 | `result-track:4ad48aed8a438b7757e226b5019b53c3ce30a656fedcde0682c6d1f0f512cf14` |
| 5 | `lemma` | [eHolderNorm_lt_top](../../../../GeneralTopology/HolderNorm.lean/declarations/eholdernorm-lt-top.md) | 60 | `result-track:ead50ab5c6c7c68fef005d76279f62e43539b119b5470889f527df2a2a0b18c1` |
| 6 | `lemma` | [eHolderNorm_ne_top](../../../../GeneralTopology/HolderNorm.lean/declarations/eholdernorm-ne-top.md) | 67 | `result-track:fb1a2e0428111d3b0fd73521e707da3b1adbee142226fa2709b35bc00e92b7dd` |
| 7 | `lemma` | [eHolderNorm_eq_top](../../../../GeneralTopology/HolderNorm.lean/declarations/eholdernorm-eq-top.md) | 70 | `result-track:52f0f0f58fe15da6cc8093619998f2bdae780db64b46b562ae88b7aed21acadc` |
| 8 | `lemma` | [coe_nnHolderNorm_le_eHolderNorm](../../../../GeneralTopology/HolderNorm.lean/declarations/coe-nnholdernorm-le-eholdernorm.md) | 76 | `result-track:415313f0944b1956db6fb5dcdf4adb2818f518d6c7d22a06f30b70707300139e` |
| 9 | `lemma` | [eHolderNorm_const](../../../../GeneralTopology/HolderNorm.lean/declarations/eholdernorm-const.md) | 82 | `result-track:d026088232fa3d5c2056732141e335c1d5a7722bdcb01773b329ad0026923960` |
| 10 | `lemma` | [eHolderNorm_zero](../../../../GeneralTopology/HolderNorm.lean/declarations/eholdernorm-zero.md) | 88 | `result-track:ebb9621db17a09a7509abeeeb43136fbbffc5fb48c917829da5423c6e52814bf` |
| 11 | `lemma` | [nnHolderNorm_const](../../../../GeneralTopology/HolderNorm.lean/declarations/nnholdernorm-const.md) | 93 | `result-track:94f8a82d344f4a5fef3ba4b435c6099b4e2476e5bc06486edaf0af7456004c68` |
| 12 | `lemma` | [nnHolderNorm_zero](../../../../GeneralTopology/HolderNorm.lean/declarations/nnholdernorm-zero.md) | 100 | `result-track:c482878657b3c8cd8d643e008087652f67d3ecf88d0b8b39c53c33660ea46dde` |
| 13 | `lemma` | [eHolderNorm_of_isEmpty](../../../../GeneralTopology/HolderNorm.lean/declarations/eholdernorm-of-isempty.md) | 105 | `result-track:c76dd837520a9e98ef93308fc24e218dec2226d2fda6b67c6972d1bab923838a` |
| 14 | `lemma` | [HolderWith.eHolderNorm_le](../../../../GeneralTopology/HolderNorm.lean/declarations/holderwith-eholdernorm-le.md) | 110 | `result-track:6c231275f3b2e7037f01424ff9f60c80d0b1631ce84956d86d3c4d613138fef3` |
| 15 | `lemma` | [memHolder_const](../../../../GeneralTopology/HolderNorm.lean/declarations/memholder-const.md) | 116 | `result-track:0c8491c30b651d309d37112f8510bb8a7555a38c7d16acf0f5fe3206a15e315c` |
| 16 | `lemma` | [memHolder_const'](../../../../GeneralTopology/HolderNorm.lean/declarations/memholder-const-source-edition-2.md) | 121 | `result-track:c130c916b28a668d64c9c0a68449422323f81046eb8c52efae29378c85e37786` |
| 17 | `lemma` | [memHolder_zero](../../../../GeneralTopology/HolderNorm.lean/declarations/memholder-zero.md) | 125 | `result-track:f9dd292aeb430e97b60c15ad9981f427962fb48181536be6813f53951fd6e608` |
| 18 | `lemma` | [eHolderNorm_eq_zero](../../../../GeneralTopology/HolderNorm.lean/declarations/eholdernorm-eq-zero.md) | 134 | `result-track:064b2785560daee406b85970a04076b32f273424397bcf3f8b9ee894831883f3` |
| 19 | `lemma` | [MemHolder.holderWith](../../../../GeneralTopology/HolderNorm.lean/declarations/memholder-holderwith.md) | 155 | `result-track:ec89263d94bbe4d349dab91b5902302a088adbc6714fb1578f037449e983411d` |
| 20 | `lemma` | [memHolder_iff_holderWith](../../../../GeneralTopology/HolderNorm.lean/declarations/memholder-iff-holderwith.md) | 171 | `result-track:96983b63a09764c6db9eddf377b1cd5b782bc12418fbe1b793376e93e52c2dc3` |
| 21 | `lemma` | [MemHolder.coe_nnHolderNorm_eq_eHolderNorm](../../../../GeneralTopology/HolderNorm.lean/declarations/memholder-coe-nnholdernorm-eq-eholdernorm.md) | 175 | `result-track:d38f88b779e642c22e56812990b1bd7c9cfbc8a58faa67b56172165447421a67` |
| 22 | `lemma` | [HolderWith.nnholderNorm_le](../../../../GeneralTopology/HolderNorm.lean/declarations/holderwith-nnholdernorm-le.md) | 181 | `result-track:03666ede6bd96e74e4ab954090691d2c312bd54fc1b1220b0e78efc2edbc43cc` |
| 23 | `lemma` | [MemHolder.comp](../../../../GeneralTopology/HolderNorm.lean/declarations/memholder-comp.md) | 186 | `result-track:d006127c3be30369e35dca690cbfcb073dbfc03c817a9bfd145c83b423d2d2ea` |
| 24 | `lemma` | [MemHolder.nnHolderNorm_eq_zero](../../../../GeneralTopology/HolderNorm.lean/declarations/memholder-nnholdernorm-eq-zero.md) | 190 | `result-track:6432f3089d15ce442df4c3670952cd0ada9229a9794f62a6febf367ed5666999` |
| 25 | `lemma` | [MemHolder.add](../../../../GeneralTopology/HolderNorm.lean/declarations/memholder-add.md) | 201 | `result-track:6146147e01cbe6710d412ec72f8c13c97459697ea833cce1c3bbef134f1dd14c` |
| 26 | `lemma` | [MemHolder.smul](../../../../GeneralTopology/HolderNorm.lean/declarations/memholder-smul.md) | 204 | `result-track:7d612f2db09164c5c37a2aa73ef6fc3cdf49f08a55b45d7ff42facb35136d1f3` |
| 27 | `lemma` | [MemHolder.smul_iff](../../../../GeneralTopology/HolderNorm.lean/declarations/memholder-smul-iff.md) | 208 | `result-track:fe79100b6674e4733544ab94138fb0de0e9126cf66fa5e42278b213e9577dc61` |
| 28 | `lemma` | [MemHolder.nsmul](../../../../GeneralTopology/HolderNorm.lean/declarations/memholder-nsmul.md) | 214 | `result-track:b33306530bc151daf974af140f108d24eab3fe04b98172a912d1c0afdbc1d990` |
| 29 | `lemma` | [MemHolder.nnHolderNorm_add_le](../../../../GeneralTopology/HolderNorm.lean/declarations/memholder-nnholdernorm-add-le.md) | 218 | `result-track:4e7d4364c29a4e4c7ae66c1c895a976026c2f1eba0f6b10ebf4ba99a9f5035e9` |
| 30 | `lemma` | [eHolderNorm_add_le](../../../../GeneralTopology/HolderNorm.lean/declarations/eholdernorm-add-le.md) | 223 | `result-track:8658ae76f79966fcf0d9f6bc5f5d5bad74ba552cf452ac446d745e841d8caf53` |
| 31 | `lemma` | [eHolderNorm_smul](../../../../GeneralTopology/HolderNorm.lean/declarations/eholdernorm-smul.md) | 234 | `result-track:735495b06a526ffc114f9f261f7cd9353b676d60f32a47f2cb498bb72443a09b` |
| 32 | `lemma` | [MemHolder.nnHolderNorm_smul](../../../../GeneralTopology/HolderNorm.lean/declarations/memholder-nnholdernorm-smul.md) | 255 | `result-track:2ff53111290c46ba735967650fcb8cca6f347655a8636013a31cc7c2ba67d398` |
| 33 | `lemma` | [eHolderNorm_nsmul](../../../../GeneralTopology/HolderNorm.lean/declarations/eholdernorm-nsmul.md) | 261 | `result-track:2b18a2ea1bba907f68fe96651070b56aedee76b27976d6113ece83c480cbc194` |
| 34 | `lemma` | [MemHolder.nnHolderNorm_nsmul](../../../../GeneralTopology/HolderNorm.lean/declarations/memholder-nnholdernorm-nsmul.md) | 265 | `result-track:9ad151b68d731b51e036109c16ff767e80d1c113638e07e6ffe85f0a3d38c212` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=23cd5fc1c74af23a9f8062638223c3e26518af4f5233130393354b613e9ec380 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/HolderNorm/Varianta613732e5c32b2ad0b3f61a15aac81bf72557a315270495b3d390abf8cbeee2d.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/HolderNorm/Varianta613732e5c32b2ad0b3f61a15aac81bf72557a315270495b3d390abf8cbeee2d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
