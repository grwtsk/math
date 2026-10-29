# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lookup.Variant405140381790c9e6749a901186192e69ee541f51ff9afb864b16f2af958f4d1b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "550b2d0f68223bca62c6e732954d313815cbea26",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant405140381790c9e6749a901186192e69ee541f51ff9afb864b16f2af958f4d1b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant405140381790c9e6749a901186192e69ee541f51ff9afb864b16f2af958f4d1b.lean/index.md) · [Full source](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant405140381790c9e6749a901186192e69ee541f51ff9afb864b16f2af958f4d1b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `550b2d0f68223bca62c6e732954d313815cbea26`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant405140381790c9e6749a901186192e69ee541f51ff9afb864b16f2af958f4d1b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant405140381790c9e6749a901186192e69ee541f51ff9afb864b16f2af958f4d1b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Lean.Meta.RefinedDiscrTree.Encode` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [findKey](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant405140381790c9e6749a901186192e69ee541f51ff9afb864b16f2af958f4d1b.lean/declarations/findkey--ea7c4791cbcf7a1514564367.md) | 31 | `declaration-track:ea7c4791cbcf7a1514564367e772cca8899dc6b14976a5f2f3999a529f56a71d` |
| 2 | `structure` | [Context](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant405140381790c9e6749a901186192e69ee541f51ff9afb864b16f2af958f4d1b.lean/declarations/context--bc80b05db32223168ceab0f4.md) | 34 | `declaration-track:bc80b05db32223168ceab0f4b5f03b84c3ca62b280fd396e5800a91f5ec492ca` |
| 3 | `structure` | [State](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant405140381790c9e6749a901186192e69ee541f51ff9afb864b16f2af958f4d1b.lean/declarations/state--3593586161b53b27a65de57f.md) | 37 | `declaration-track:3593586161b53b27a65de57fe776f5982a0e22b67b92dd2d0a4672a8bcd7ce1c` |
| 4 | `abbrev` | [M](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant405140381790c9e6749a901186192e69ee541f51ff9afb864b16f2af958f4d1b.lean/declarations/m--8658860c4f64b8540332b206.md) | 46 | `declaration-track:8658860c4f64b8540332b206b70c2aaeaf7f80902786f0b07bd130fdd4000a99` |
| 5 | `def` | [M.run](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant405140381790c9e6749a901186192e69ee541f51ff9afb864b16f2af958f4d1b.lean/declarations/m-run--2061fc2a89adc470528940ad.md) | 49 | `declaration-track:2061fc2a89adc470528940ad87ad57d98adfb5b30c88e03d6eeb65554d7080c2` |
| 6 | `def` | [incrementScore](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant405140381790c9e6749a901186192e69ee541f51ff9afb864b16f2af958f4d1b.lean/declarations/incrementscore--19b5e607e5b158de4d6b24f3.md) | 54 | `declaration-track:19b5e607e5b158de4d6b24f3867edd9b39997677ecedb08f359e0f1fa9e52600` |
| 7 | `def` | [insertStarAssignment](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant405140381790c9e6749a901186192e69ee541f51ff9afb864b16f2af958f4d1b.lean/declarations/insertstarassignment--d2571365d251ca478ba0dd62.md) | 58 | `declaration-track:d2571365d251ca478ba0dd62fa390eaec1dc40d6eb1d2144c605542fc0cebf56` |
| 8 | `def` | [assignMVar](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant405140381790c9e6749a901186192e69ee541f51ff9afb864b16f2af958f4d1b.lean/declarations/assignmvar--3153f467764f91ea40581fd1.md) | 62 | `declaration-track:3153f467764f91ea40581fd169973a5bce7beced3e962cd0ad310f5477f224d2` |
| 9 | `def` | [skipEntries](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant405140381790c9e6749a901186192e69ee541f51ff9afb864b16f2af958f4d1b.lean/declarations/skipentries--f6ef7e605512a53786ebccab.md) | 70 | `declaration-track:f6ef7e605512a53786ebccab22bc28b36109d270c5908e9b6187f0ef79fccbda` |
| 10 | `def` | [matchTargetStar](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant405140381790c9e6749a901186192e69ee541f51ff9afb864b16f2af958f4d1b.lean/declarations/matchtargetstar--7c0ba7de1a09bbcf5b041d8f.md) | 78 | `declaration-track:7c0ba7de1a09bbcf5b041d8f60eefa1efcca4d5a1999e61321cdd80916076a3e` |
| 11 | `def` | [matchTreeStars](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant405140381790c9e6749a901186192e69ee541f51ff9afb864b16f2af958f4d1b.lean/declarations/matchtreestars--6a0d6281c98b36d1525dd6ce.md) | 90 | `declaration-track:6a0d6281c98b36d1525dd6ce7f8fe55d59469bed4e2464f54654b9b2ca67900e` |
| 12 | `def` | [matchExpr](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant405140381790c9e6749a901186192e69ee541f51ff9afb864b16f2af958f4d1b.lean/declarations/matchexpr--a4ce2c99af6da59a7315c6ea.md) | 106 | `declaration-track:a4ce2c99af6da59a7315c6ea2fb808559192807dc67c4046b8d36928f0c260b0` |
| 13 | `def` | [exactMatch](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant405140381790c9e6749a901186192e69ee541f51ff9afb864b16f2af958f4d1b.lean/declarations/exactmatch--5afb83e611697227d076b703.md) | 117 | `declaration-track:5afb83e611697227d076b7034bac6891bc0c49fd1176d5bc03072e5fe8472d2d` |
| 14 | `def` | [getMatchWithScoreAux](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant405140381790c9e6749a901186192e69ee541f51ff9afb864b16f2af958f4d1b.lean/declarations/getmatchwithscoreaux--38b7a7305e9947aa16e6bf37.md) | 143 | `declaration-track:38b7a7305e9947aa16e6bf373a2b4ed989a331fe122bbf29b247012af40bf630` |
| 15 | `def` | [getMatchWithScore](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant405140381790c9e6749a901186192e69ee541f51ff9afb864b16f2af958f4d1b.lean/declarations/getmatchwithscore--859a4c90687cefbe158f9621.md) | 173 | `declaration-track:859a4c90687cefbe158f9621e247aed06c11865f62ce0e09a21811f10e810cf8` |
| 16 | `def` | [getMatchWithScoreWithExtra](../../../../../../FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant405140381790c9e6749a901186192e69ee541f51ff9afb864b16f2af958f4d1b.lean/declarations/getmatchwithscorewithextra--52918e684448b88fb5c9b2ab.md) | 181 | `declaration-track:52918e684448b88fb5c9b2abc8aba94d08603b3466e9f7435b8d493506ee06fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=94216e50ffcf90a1f048d022944ee9cfb671fe169bdf76d471c6b1765c3e91e2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant405140381790c9e6749a901186192e69ee541f51ff9afb864b16f2af958f4d1b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant405140381790c9e6749a901186192e69ee541f51ff9afb864b16f2af958f4d1b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
