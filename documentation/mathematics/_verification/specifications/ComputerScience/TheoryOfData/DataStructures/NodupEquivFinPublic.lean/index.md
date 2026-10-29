# Verification target: Nodup Equiv Fin Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98ff504a389be9dbdedf15ea5b8535afb33b1a8b",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NodupEquivFin/Variant05bb230a25a0d5cb6d94659067530ca301575b203bb1027751fd1d2ae7e9c347.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupEquivFinPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupEquivFinPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98ff504a389be9dbdedf15ea5b8535afb33b1a8b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NodupEquivFin/Variant05bb230a25a0d5cb6d94659067530ca301575b203bb1027751fd1d2ae7e9c347.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NodupEquivFin/Variant05bb230a25a0d5cb6d94659067530ca301575b203bb1027751fd1d2ae7e9c347.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getBijectionOfForallMemList](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupEquivFinPublic.lean/declarations/getbijectionofforallmemlist.md) | 43 | `declaration-track:2a9519b60ee99efdd542443a060a6a929eb115ef596fcbad42918d07eee6bcec` |
| 2 | `def` | [getEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupEquivFinPublic.lean/declarations/getequiv.md) | 55 | `declaration-track:bf0f2fbb63116a970d84f191f9e451f1f6f561edb70a992fbacb24d5a846c402` |
| 3 | `def` | [getEquivOfForallMemList](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupEquivFinPublic.lean/declarations/getequivofforallmemlist.md) | 66 | `declaration-track:09d715518162dbbb902e9062bb018644a8bc635340d9d71a7d792f4eafd8f2ef` |
| 4 | `def` | [getEquivOfForallCountEqOne](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupEquivFinPublic.lean/declarations/getequivofforallcounteqone.md) | 79 | `declaration-track:fdd23dafd81b8e865ed51cc874e65936a65cb047f0c0b50b75b2a8dba1259296` |
| 5 | `def` | [SortedLT.getIso](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupEquivFinPublic.lean/declarations/sortedlt-getiso.md) | 90 | `declaration-track:f8f0eb94a027f86a772ff24b8db34db362066526f3f3416ee3dfdf2655daaabd` |
| 6 | `theorem` | [SortedLT.coe_getIso_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupEquivFinPublic.lean/declarations/sortedlt-coe-getiso-apply.md) | 97 | `result-track:a67bb260469360c6f3874fb3578606566f693803a6be3c612c2aad7311bda2a0` |
| 7 | `theorem` | [SortedLT.coe_getIso_symm_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupEquivFinPublic.lean/declarations/sortedlt-coe-getiso-symm-apply.md) | 101 | `result-track:ab7687174a9784a2f0f914d77711a146d2bec33819edc22cc5df08e5b9d91e8f` |
| 8 | `theorem` | [sublist_of_orderEmbedding_getElem?_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupEquivFinPublic.lean/declarations/sublist-of-orderembedding-getelem-eq.md) | 112 | `result-track:20a60d74c9385396c3274277366ba7be2cfeb31bddc4cc208c1978d1462b5370` |
| 9 | `theorem` | [sublist_iff_exists_orderEmbedding_getElem?_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupEquivFinPublic.lean/declarations/sublist-iff-exists-orderembedding-getelem-eq.md) | 141 | `result-track:ea640261cb6a1b281fef112f8d3573af4e26cf0a88771fa0c2be457e5baef07a` |
| 10 | `theorem` | [sublist_iff_exists_fin_orderEmbedding_get_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupEquivFinPublic.lean/declarations/sublist-iff-exists-fin-orderembedding-get-eq.md) | 166 | `result-track:91a3c615eecb2494c6ff5f34aa51d19b87ddc82d482fde35938ba463ae770cd6` |
| 11 | `theorem` | [duplicate_iff_exists_distinct_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/NodupEquivFinPublic.lean/declarations/duplicate-iff-exists-distinct-get.md) | 201 | `result-track:76dc763669e1cf3edc2ce7e237b10fed6036ae609d89d11a0fc8ab084aebaec5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eab9085657efa48aa9141cb7f73459f66c8dfdf92e33806067d230f74ae4be55 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NodupEquivFin/Variant05bb230a25a0d5cb6d94659067530ca301575b203bb1027751fd1d2ae7e9c347.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/NodupEquivFin/Variant05bb230a25a0d5cb6d94659067530ca301575b203bb1027751fd1d2ae7e9c347.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
