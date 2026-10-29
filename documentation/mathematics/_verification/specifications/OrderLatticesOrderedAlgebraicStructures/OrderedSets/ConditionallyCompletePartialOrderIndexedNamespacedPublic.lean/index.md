# Verification target: Conditionally Complete Partial Order Indexed Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6665f2550500ef2eafb3d3acf1eac013c413639a",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Indexed/Variant193289fbb3b16ad27594e5ea828703ad955ea82bfeaa24ff328709555c9e67c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderIndexedNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderIndexedNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6665f2550500ef2eafb3d3acf1eac013c413639a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Indexed/Variant193289fbb3b16ad27594e5ea828703ad955ea82bfeaa24ff328709555c9e67c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Indexed/Variant193289fbb3b16ad27594e5ea828703ad955ea82bfeaa24ff328709555c9e67c3.lean.json)

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
| 1 | `theorem` | [Directed.isLUB_ciSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderIndexedNamespacedPublic.lean/declarations/directed-islub-cisup.md) | 41 | `result-track:739601a7937c7e31d4ed6cba47a3cffc8be4118bff1da1176e428b5c2c525cd4` |
| 2 | `theorem` | [DirectedOn.isLUB_ciSup_set](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderIndexedNamespacedPublic.lean/declarations/directedon-islub-cisup-set.md) | 46 | `result-track:27e5a118ce0eca1f57944ca4d370e7bab20909b199ceb7be7f975c3d7edc47bf` |
| 3 | `theorem` | [Directed.ciSup_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderIndexedNamespacedPublic.lean/declarations/directed-cisup-le-iff.md) | 53 | `result-track:aa246601311d0ce111bd6b6b984296d36ee4ec9a9fd8d3035b47347cfd755284` |
| 4 | `theorem` | [DirectedOn.ciSup_set_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderIndexedNamespacedPublic.lean/declarations/directedon-cisup-set-le-iff.md) | 59 | `result-track:77849f935b896c05f8502d2bbabce2b72c2e13635b22272081fd54033580967c` |
| 5 | `theorem` | [Directed.le_ciSup_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderIndexedNamespacedPublic.lean/declarations/directed-le-cisup-of-le.md) | 65 | `result-track:02c30fa71153f1888fdf7bfe6c8953eb7c92d150531ba46b963a5e15d5e2f823` |
| 6 | `theorem` | [Directed.ciSup_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderIndexedNamespacedPublic.lean/declarations/directed-cisup-mono.md) | 73 | `result-track:d3204348ba290fb2e0ea61937377f3ce1efc2d63aba77a94e20b3dc3d8f71fd5` |
| 7 | `theorem` | [DirectedOn.le_ciSup_set](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderIndexedNamespacedPublic.lean/declarations/directedon-le-cisup-set.md) | 81 | `result-track:de41b4174dc642c6dda048551ba920a330c8579fada3a3430dabd26dd8024f7c` |
| 8 | `theorem` | [ciSup_const](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderIndexedNamespacedPublic.lean/declarations/cisup-const.md) | 86 | `result-track:b96289cb97a9164d99396fd06239bbfdd0da4be6e7acbaaacdd5f912fba76057` |
| 9 | `theorem` | [ciSup_unique](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderIndexedNamespacedPublic.lean/declarations/cisup-unique.md) | 90 | `result-track:00da6323c714e6030382fb074b33a36beb69cc3129f3859a5495d2a2f1de5a8b` |
| 10 | `theorem` | [ciSup_subsingleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderIndexedNamespacedPublic.lean/declarations/cisup-subsingleton.md) | 95 | `result-track:a8b61525ffda944d2be3e7e5c7c7f7583c2b41dcf0bbe908a110e22565b18d81` |
| 11 | `theorem` | [ciSup_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderIndexedNamespacedPublic.lean/declarations/cisup-pos.md) | 99 | `result-track:75020e904a046629983acedbe24148739b57e0e48914cbb79c772af8460b269b` |
| 12 | `lemma` | [ciSup_neg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderIndexedNamespacedPublic.lean/declarations/cisup-neg.md) | 103 | `result-track:40d91b058d9863b1c948207aa7519e0059f5ced8baf6382cebc5437585dafd4e` |
| 13 | `lemma` | [ciSup_eq_ite](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderIndexedNamespacedPublic.lean/declarations/cisup-eq-ite.md) | 110 | `result-track:d58b91d97e37dd205cbfb2b981aa06a2b1a5b3cbec5221bb2c2d7a826ed06b44` |
| 14 | `theorem` | [cbiSup_eq_of_forall](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderIndexedNamespacedPublic.lean/declarations/cbisup-eq-of-forall.md) | 115 | `result-track:29f6efdc9846de58776a244268f0bb81b583cf55d48117dddc1c2b9d6a4bb647` |
| 15 | `lemma` | [cbiSup_eq_of_forall_not](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderIndexedNamespacedPublic.lean/declarations/cbisup-eq-of-forall-not.md) | 127 | `result-track:faa79c6587448a9ab832d191e2fb53de46f3c00553c1187394e4a883fba84667` |
| 16 | `theorem` | [cbiSup_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderIndexedNamespacedPublic.lean/declarations/cbisup-empty.md) | 135 | `result-track:69199203560c8695910fe68a27962cc945277c5201453c6c30dde1cf1c680f8e` |
| 17 | `theorem` | [Directed.ciSup_eq_of_forall_le_of_forall_lt_exists_gt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderIndexedNamespacedPublic.lean/declarations/directed-cisup-eq-of-forall-le-of-forall-lt-exists-gt.md) | 145 | `result-track:b36ea40b432bf976dff19d863f5657d2329fe8bfd68c068d07fbb85afbdc5c3a` |
| 18 | `theorem` | [Monotone.ciSup_mem_iInter_Icc_of_antitone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderIndexedNamespacedPublic.lean/declarations/monotone-cisup-mem-iinter-icc-of-antitone.md) | 153 | `result-track:4003fe44de0249860872c08e031c8d81a3086735c12223aaad42166c3fccb31d` |
| 19 | `theorem` | [ciSup_mem_iInter_Icc_of_antitone_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderIndexedNamespacedPublic.lean/declarations/cisup-mem-iinter-icc-of-antitone-icc.md) | 164 | `result-track:99f8d4c06385e69e89b8102f86cc58bd1a509b2ce499436c6dac3acf4224a693` |
| 20 | `lemma` | [Directed.Ici_ciSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderIndexedNamespacedPublic.lean/declarations/directed-ici-cisup.md) | 172 | `result-track:33a4ad67e43cf39d3099a53e849530afce9d4445e87360040b94edb59deb102d` |
| 21 | `theorem` | [ciSup_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderIndexedNamespacedPublic.lean/declarations/cisup-iic.md) | 178 | `result-track:07be926896afb6192058c5f6c21b3ce058ce94a9d3d50aaa267488798898b74a` |
| 22 | `lemma` | [Directed.ciInf_le_ciSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderIndexedNamespacedPublic.lean/declarations/directed-ciinf-le-cisup.md) | 189 | `result-track:572c61034405ad909162642b33f938abac4a442e35b19c5d35a6c70722eba9e7` |
| 23 | `theorem` | [l_csSup_of_directedOn'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderIndexedNamespacedPublic.lean/declarations/l-cssup-of-directedon-source-edition-2.md) | 203 | `result-track:e99c0a668f12d57399f5b7346ef1cd9fb22348f4d48e65642125c6dc022f2c11` |
| 24 | `theorem` | [l_csSup_of_directedOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderIndexedNamespacedPublic.lean/declarations/l-cssup-of-directedon.md) | 210 | `result-track:283e5968f40ef7c5c04c139a12352229a52f5f1a94130b0a550e519056f17aac` |
| 25 | `theorem` | [l_ciSup_of_directed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderIndexedNamespacedPublic.lean/declarations/l-cisup-of-directed.md) | 216 | `result-track:f3c1b8a2e0986a3e16c2cbe939f1f1119c01f2651d7022b4869278a9f9b98bd7` |
| 26 | `theorem` | [l_ciSup_set_of_directedOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderIndexedNamespacedPublic.lean/declarations/l-cisup-set-of-directedon.md) | 221 | `result-track:07748f706f7e2aa09f9c88de4eff370e5db705d95b31d3ff616a7ff91da37b9d` |
| 27 | `theorem` | [map_csSup_of_directedOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderIndexedNamespacedPublic.lean/declarations/map-cssup-of-directedon-source-edition-2.md) | 242 | `result-track:b43fcc1d8b8ee8d128a94c74e105fca10c79bed936b798b470a9271c827d1854` |
| 28 | `theorem` | [map_csSup_of_directedOn'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderIndexedNamespacedPublic.lean/declarations/map-cssup-of-directedon.md) | 247 | `result-track:46bed3df47f78b3f5bd0b47ab1d873f50c93d77ce0871b68b9501cc340d690c4` |
| 29 | `theorem` | [map_ciSup_of_directed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderIndexedNamespacedPublic.lean/declarations/map-cisup-of-directed.md) | 252 | `result-track:3237dda2aadd80b92aef89fb53b0be4c7e66ec789b9ca56fa170177db1ebf567` |
| 30 | `theorem` | [map_ciSup_set_of_directedOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderIndexedNamespacedPublic.lean/declarations/map-cisup-set-of-directedon.md) | 257 | `result-track:9c0ae9a7108aad074f85fe884e0383f6c979bd039a9409d3a74652c7af25d100` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1880fb3e67a05c1319ec83af4b98b808616242c59f0fd59129d3793c3ccd5858 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Indexed/Variant193289fbb3b16ad27594e5ea828703ad955ea82bfeaa24ff328709555c9e67c3.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Indexed/Variant193289fbb3b16ad27594e5ea828703ad955ea82bfeaa24ff328709555c9e67c3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
