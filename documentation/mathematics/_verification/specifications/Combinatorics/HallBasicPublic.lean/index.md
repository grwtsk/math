# Verification target: Hall Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ccde56b92dfd7af39fcedbe8d2a12ec795db85b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant8a48b3a4aecd1e76eeefe3858fd0df919ce3140c42340914f60201c9caee911b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/HallBasicPublic.lean/index.md) · [Full source](../../../../Combinatorics/HallBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ccde56b92dfd7af39fcedbe8d2a12ec795db85b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant8a48b3a4aecd1e76eeefe3858fd0df919ce3140c42340914f60201c9caee911b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variant8a48b3a4aecd1e76eeefe3858fd0df919ce3140c42340914f60201c9caee911b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hallMatchingsOn](../../../../Combinatorics/HallBasicPublic.lean/declarations/hallmatchingson.md) | 59 | `declaration-track:69f2ff1fdce93a1b856b8d3e76bfc0ccf49612d0f97af8a6aafa70fc73be12f0` |
| 2 | `def` | [hallMatchingsOn.restrict](../../../../Combinatorics/HallBasicPublic.lean/declarations/hallmatchingson-restrict.md) | 63 | `declaration-track:ceeb0cda0eec93d5bc79335fee0eeaf0672a1cc349b1aa409de7c13f65e12039` |
| 3 | `theorem` | [hallMatchingsOn.nonempty](../../../../Combinatorics/HallBasicPublic.lean/declarations/hallmatchingson-nonempty.md) | 73 | `result-track:5bf21eb9a211205efc5405e72b95f650ef9ecdb18014311b5cf1efdb851d400d` |
| 4 | `def` | [hallMatchingsFunctor](../../../../Combinatorics/HallBasicPublic.lean/declarations/hallmatchingsfunctor.md) | 86 | `declaration-track:bb8028c300f71213ee4a9751c910cc24fc52c132e74c189480d7e4ef29a5a4ea` |
| 5 | `instance` | [hallMatchingsOn.finite](../../../../Combinatorics/HallBasicPublic.lean/declarations/hallmatchingson-finite.md) | 91 | `declaration-track:48525b80e60c92abc3b31ca0de583a0e74486ed4506fe3ac827772facda12733` |
| 6 | `theorem` | [Finset.all_card_le_biUnion_card_iff_exists_injective](../../../../Combinatorics/HallBasicPublic.lean/declarations/finset-all-card-le-biunion-card-iff-exists-injective.md) | 116 | `result-track:8fba78e05f28d04ee3cccfca79cac522c29da997f1975eae329f4ba4bcf0de0a` |
| 7 | `instance` | [(anonymous)](../../../../Combinatorics/HallBasicPublic.lean/declarations/instance.md) | 157 | `declaration-track:0e3e01062f055f74a28d578980bac784c02013d3cf09a17ee0f90800afe0e18b` |
| 8 | `theorem` | [Fintype.all_card_le_rel_image_card_iff_exists_injective](../../../../Combinatorics/HallBasicPublic.lean/declarations/fintype-all-card-le-rel-image-card-iff-exists-injective.md) | 176 | `result-track:81de68def757360f250856eda38058ff2c59f4e82842d0d4bf568c7c136ff1e9` |
| 9 | `theorem` | [Fintype.all_card_le_filter_rel_iff_exists_injective](../../../../Combinatorics/HallBasicPublic.lean/declarations/fintype-all-card-le-filter-rel-iff-exists-injective.md) | 198 | `result-track:ddfd98bbfb2ea58cfb484505c09f10b1bf1ea00a6ec9c8767d17710cbe1fb463` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1d3436c9d088eacd11493e17c682d01717efb31cb28e797ca12d8aabf1c0c0ee -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant8a48b3a4aecd1e76eeefe3858fd0df919ce3140c42340914f60201c9caee911b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Basic/Variant8a48b3a4aecd1e76eeefe3858fd0df919ce3140c42340914f60201c9caee911b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
