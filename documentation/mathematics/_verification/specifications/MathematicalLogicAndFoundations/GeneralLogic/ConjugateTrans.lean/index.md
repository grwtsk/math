# Verification target: Conjugate Trans

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69098eb142cbfcf9840bf71e2885112df9f7e1e5",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Conjugate/Varianta9295f03850caee30156f6f448601a1183f466e965566ceaefac956978a39395.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConjugateTrans.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConjugateTrans.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69098eb142cbfcf9840bf71e2885112df9f7e1e5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Conjugate/Varianta9295f03850caee30156f6f448601a1183f466e965566ceaefac956978a39395.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Conjugate/Varianta9295f03850caee30156f6f448601a1183f466e965566ceaefac956978a39395.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Semiconj](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConjugateTrans.lean/declarations/semiconj.md) | 29 | `declaration-track:2f51f764368afbea76b2a43ca353c741707d8fe0930101a41f8aea2f32c6cd6c` |
| 2 | `lemma` | [_root_.Function.semiconj_iff_comp_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConjugateTrans.lean/declarations/root-function-semiconj-iff-comp-eq.md) | 37 | `result-track:e1c2b50087caa40aa86448975d8d18352872eafb69c57f80ba4339a3a6cf05d9` |
| 3 | `theorem` | [eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConjugateTrans.lean/declarations/eq-source-edition-2.md) | 41 | `result-track:a7462aee4b730a5d0b6c5a6ca3085084fb7774f61da5318e842bc7689432c5df` |
| 4 | `theorem` | [comp_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConjugateTrans.lean/declarations/comp-right.md) | 46 | `result-track:6b57232299652acf302b3fa1217206448203cd9e19b7caae6833db989bfe570c` |
| 5 | `theorem` | [trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConjugateTrans.lean/declarations/trans.md) | 54 | `result-track:f1f92cbaf592f64768003df2b1884560482f6b1fb2f2de787eb9cd2bfd2e1ab9` |
| 6 | `theorem` | [comp_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConjugateTrans.lean/declarations/comp-left.md) | 65 | `result-track:39234f2dad40d8d3a289004b886e8e23bdfd99ad7696d15b82b912db428324d5` |
| 7 | `theorem` | [id_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConjugateTrans.lean/declarations/id-right.md) | 70 | `result-track:3253db673f24cca0c4560eb5a2946cea1076277a5dfd28915a24be76d5891713` |
| 8 | `theorem` | [id_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConjugateTrans.lean/declarations/id-left.md) | 73 | `result-track:7e3f3ba0cd19fd71b955423f32ddb1c77a32c115e10382ca06f863d0ed5e626a` |
| 9 | `theorem` | [inverses_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConjugateTrans.lean/declarations/inverses-right.md) | 78 | `result-track:d1b6991b4a69b11def4c8786d4aba142b4fd92b8d4d6476b92fb4dab4185e4e5` |
| 10 | `lemma` | [inverse_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConjugateTrans.lean/declarations/inverse-left.md) | 84 | `result-track:e0aaeea27726c7b4c722fc0f7da5b5a505b9ed5c454086b14ceb62178adf8072` |
| 11 | `theorem` | [option_map](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConjugateTrans.lean/declarations/option-map-source-edition-2.md) | 90 | `result-track:c289d57c8ef44d2366183163941320202c29fca40c94cc888453368fbbdedc48` |
| 12 | `def` | [Commute](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConjugateTrans.lean/declarations/commute.md) | 102 | `declaration-track:2798ff2f0b1b3ecac564f95be845d3c9916ac6624629c2b3f7e5f99a54482244` |
| 13 | `theorem` | [Semiconj.commute](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConjugateTrans.lean/declarations/semiconj-commute.md) | 109 | `result-track:7c7eca3548b8856dc3a34a4dfe5dd46cae337bfc1e49ffa135f036d325c3ee7a` |
| 14 | `theorem` | [semiconj](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConjugateTrans.lean/declarations/semiconj-source-edition-2.md) | 117 | `result-track:514326dd3593f77c0df212fd65219765ac3e8bcb9915cba3ff6a7af55b4d8f8c` |
| 15 | `theorem` | [refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConjugateTrans.lean/declarations/refl.md) | 120 | `result-track:90c61bf50a88591bfd2946a3a6bd496aab04fdaf9b1a75e8221cd12827dcf840` |
| 16 | `theorem` | [symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConjugateTrans.lean/declarations/symm.md) | 123 | `result-track:2510faeddf5088b48e4aa80e6808ad73b8a023e7a654f720b015b896847270fd` |
| 17 | `theorem` | [comp_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConjugateTrans.lean/declarations/comp-right-source-edition-2.md) | 126 | `result-track:b231a9e0a4d341f6324fd3630ffe424be142a653df11e919785047d8b428f9ae` |
| 18 | `theorem` | [comp_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConjugateTrans.lean/declarations/comp-left-source-edition-2.md) | 130 | `result-track:6f3a076ad360c98b83eb25552d6679cf4d4100abee870b5acc599fa4fe48ef26` |
| 19 | `theorem` | [id_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConjugateTrans.lean/declarations/id-right-source-edition-2.md) | 134 | `result-track:f8bf938c60bf8d5c05fee2ded3f52bac55054b7ffcfc9951a3f758139a368e1b` |
| 20 | `theorem` | [id_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConjugateTrans.lean/declarations/id-left-source-edition-3.md) | 137 | `result-track:c35acf1b63a260546804b28f6b3318b5a7b5305ca245597204a52fbe75fd3e28` |
| 21 | `theorem` | [option_map](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConjugateTrans.lean/declarations/option-map.md) | 141 | `result-track:18d2db5b0cf28bcb7e5e5aa142f9d31872b7277dcb39903d91e60aafdfdf195b` |
| 22 | `def` | [Semiconj₂](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConjugateTrans.lean/declarations/semiconj-source-edition-3.md) | 151 | `declaration-track:f3f5343be5e588962e7d6965809c7986b62fb7775990f34f5a4dab3081499375` |
| 23 | `theorem` | [eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConjugateTrans.lean/declarations/eq.md) | 158 | `result-track:52f04c4f6e84d086660d7c8a3cd0f38add9acf23a9f579fae237c92826a13856` |
| 24 | `theorem` | [comp_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConjugateTrans.lean/declarations/comp-eq.md) | 161 | `result-track:e1bb727ea8038d873e3f342b8a2f124c9694ad19ed9056d952c3cf1688a032fd` |
| 25 | `theorem` | [id_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConjugateTrans.lean/declarations/id-left-source-edition-2.md) | 164 | `result-track:89fde7d59036d5e2623abfe88f5331884dcd07ad1f682b20029dc2936275ac5d` |
| 26 | `theorem` | [comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConjugateTrans.lean/declarations/comp.md) | 166 | `result-track:ba1c96a6e1ad3382c8c95390b4ce24473c13ac4c9678bee53dc7dbb0b5a1fdfa` |
| 27 | `theorem` | [isAssociative_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConjugateTrans.lean/declarations/isassociative-right.md) | 169 | `result-track:32f3292aae01edcec240f43ca5d092f7f3114ca1e5058f6523069e1d528a3e36` |
| 28 | `theorem` | [isAssociative_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConjugateTrans.lean/declarations/isassociative-left.md) | 173 | `result-track:d6de5c83ebc732019de43af61a0dc9158b1d502a98199a5cee934b59c36f6943` |
| 29 | `theorem` | [isIdempotent_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConjugateTrans.lean/declarations/isidempotent-right.md) | 177 | `result-track:028145a245c9b93b590e521cd04aa33fcfbc269666544a73a92075ef54f99574` |
| 30 | `theorem` | [isIdempotent_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConjugateTrans.lean/declarations/isidempotent-left.md) | 181 | `result-track:af18139902285a83b4a6fb71ab5e89f981d3c1155fe5d4ffee907a546feffb25` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1f08b0efaeec106ed30d10f7a46cc5bf4b869dd2200fda9106f3235168b16a05 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Conjugate/Varianta9295f03850caee30156f6f448601a1183f466e965566ceaefac956978a39395.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Conjugate/Varianta9295f03850caee30156f6f448601a1183f466e965566ceaefac956978a39395.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
