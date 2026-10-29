# Verification target: Representation Theory Irreducible Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f1ceb250a373db2e469300b0d5e601f53d59438",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Irreducible/Variant44ed2f619378d4983c9b0ec5c48f90a239aca0ea6f3b0c2792756425b0733145.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryIrreduciblePublic.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryIrreduciblePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f1ceb250a373db2e469300b0d5e601f53d59438`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Irreducible/Variant44ed2f619378d4983c9b0ec5c48f90a239aca0ea6f3b0c2792756425b0733145.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Irreducible/Variant44ed2f619378d4983c9b0ec5c48f90a239aca0ea6f3b0c2792756425b0733145.lean.json)

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
| 1 | `abbrev` | [IsIrreducible](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryIrreduciblePublic.lean/declarations/isirreducible.md) | 30 | `declaration-track:673e9972f84c84e55e99eb95cf0836f257fbd1ad9d31c4f3af069108a6fd7416` |
| 2 | `theorem` | [irreducible_iff_isSimpleModule_asModule](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryIrreduciblePublic.lean/declarations/irreducible-iff-issimplemodule-asmodule.md) | 33 | `result-track:f647c48c1d89b2ef02512f88959b03050497bce7f3e4e25720b6a32caf277c77` |
| 3 | `theorem` | [isSimpleModule_iff_irreducible_ofModule](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryIrreduciblePublic.lean/declarations/issimplemodule-iff-irreducible-ofmodule.md) | 39 | `result-track:466b3c2caefb125bd49b1870d9edb4012cb7dd08be65f38439b2969c85f2cc0c` |
| 4 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryIrreduciblePublic.lean/declarations/instance-source-edition-2.md) | 48 | `declaration-track:5d8c49bde8a4ffa522c86b104e2f72b0839c8bbb9b05d4469d04b71cca4b7e9f` |
| 5 | `theorem` | [injective_or_eq_zero](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryIrreduciblePublic.lean/declarations/injective-or-eq-zero.md) | 53 | `result-track:8604b77b5b07c4feeba2e67dc5b274904a1471a53494ff054a0731214bc6206c` |
| 6 | `theorem` | [surjective_or_eq_zero](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryIrreduciblePublic.lean/declarations/surjective-or-eq-zero.md) | 57 | `result-track:38d6498824d603d770d36ca291c3c84c908bca797fe8fe6289b14d40b8ffdd0f` |
| 7 | `theorem` | [bijective_or_eq_zero](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryIrreduciblePublic.lean/declarations/bijective-or-eq-zero.md) | 61 | `result-track:9abdd26df4660a0bca4418bf32000bdc6f4550fd8eb1ddd1f428236f3e701782` |
| 8 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryIrreduciblePublic.lean/declarations/instance.md) | 65 | `declaration-track:1f8ffdf5b438834158fefdda271366b412208e58c8b1a25bf8b6815b05f38848` |
| 9 | `theorem` | [algebraMap_intertwiningMap_bijective_of_isAlgClosed](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryIrreduciblePublic.lean/declarations/algebramap-intertwiningmap-bijective-of-isalgclosed.md) | 71 | `result-track:2bfd9e33d19cc9bd40903856ab45aa7619486316f43c4784d62e312a9ee856a7` |
| 10 | `theorem` | [finrank_intertwiningMap_self](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryIrreduciblePublic.lean/declarations/finrank-intertwiningmap-self.md) | 78 | `result-track:1885d7ae574a7238093c7a24e11f3c97eb031e721ef249d64bdd9ff3cdd13f05` |
| 11 | `theorem` | [finrank_eq_one_of_isMulCommutative](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryIrreduciblePublic.lean/declarations/finrank-eq-one-of-ismulcommutative.md) | 86 | `result-track:ee6ee9a8af644e6c3af42ed5a1a37c2014e0b4d8fb48975a4d14fae73b96879a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7869d990d7526ea26ed4e4ff1f76f7fd09e62a28228e1b26509a2220fcab57d2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Irreducible/Variant44ed2f619378d4983c9b0ec5c48f90a239aca0ea6f3b0c2792756425b0733145.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Irreducible/Variant44ed2f619378d4983c9b0ec5c48f90a239aca0ea6f3b0c2792756425b0733145.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
