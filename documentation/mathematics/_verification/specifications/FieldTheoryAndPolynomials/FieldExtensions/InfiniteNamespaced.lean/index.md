# Verification target: Infinite Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6aff0f690d21cd86887156330f15ed6e648f7fdd",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Infinite/Variant3917e1882d1fedaac0a1f54b10cbc3abd76e8880f614d75c41b17b03e89f51a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FieldTheoryAndPolynomials/FieldExtensions/InfiniteNamespaced.lean/index.md) · [Full source](../../../../../FieldTheoryAndPolynomials/FieldExtensions/InfiniteNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6aff0f690d21cd86887156330f15ed6e648f7fdd`.

Source path: `GRWTSK/Topology/GeneralTopology/Infinite/Variant3917e1882d1fedaac0a1f54b10cbc3abd76e8880f614d75c41b17b03e89f51a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Infinite/Variant3917e1882d1fedaac0a1f54b10cbc3abd76e8880f614d75c41b17b03e89f51a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.KrullTopology` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Galois.GaloisClosure` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.ClosedSubgroup` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [fixingSubgroup_isClosed](../../../../../FieldTheoryAndPolynomials/FieldExtensions/InfiniteNamespaced.lean/declarations/fixingsubgroup-isclosed.md) | 66 | `result-track:d51fbfc10be008682b690d1758763742bf0869f81e75ca18ce7e900af29a8bba` |
| 2 | `lemma` | [fixedField_fixingSubgroup](../../../../../FieldTheoryAndPolynomials/FieldExtensions/InfiniteNamespaced.lean/declarations/fixedfield-fixingsubgroup.md) | 87 | `result-track:b674b2780701b179a633f5989949e951b834db258e7d5fea85864d63085fbf30` |
| 3 | `lemma` | [fixedField_bot](../../../../../FieldTheoryAndPolynomials/FieldExtensions/InfiniteNamespaced.lean/declarations/fixedfield-bot.md) | 108 | `result-track:351d7fef71083d993e5ab59330e47e3d2c15de125ca2bfbbe0a8b46778be80b0` |
| 4 | `lemma` | [restrict_fixedField](../../../../../FieldTheoryAndPolynomials/FieldExtensions/InfiniteNamespaced.lean/declarations/restrict-fixedfield.md) | 115 | `result-track:d57c5740bcd8fea48bd4e2aec8dc308d57c9af6016d22e3896fa451279113812` |
| 5 | `lemma` | [fixingSubgroup_fixedField](../../../../../FieldTheoryAndPolynomials/FieldExtensions/InfiniteNamespaced.lean/declarations/fixingsubgroup-fixedfield.md) | 140 | `result-track:fa46ecdda6bcb6bcd5e135d02ba6a4742a163f25b7243489e38226ace672f236` |
| 6 | `def` | [IntermediateFieldEquivClosedSubgroup](../../../../../FieldTheoryAndPolynomials/FieldExtensions/InfiniteNamespaced.lean/declarations/intermediatefieldequivclosedsubgroup.md) | 190 | `declaration-track:4a73d8b749a79b0c0d435fef44416a217860c432e08b07789128ba88395a84d4` |
| 7 | `def` | [GaloisInsertionIntermediateFieldClosedSubgroup](../../../../../FieldTheoryAndPolynomials/FieldExtensions/InfiniteNamespaced.lean/declarations/galoisinsertionintermediatefieldclosedsubgroup.md) | 203 | `declaration-track:bd7b7496160a5ec32ecb43411e6790cc3c3bf257b9fdeb741c0f286a47cd6fbd` |
| 8 | `def` | [GaloisCoinsertionIntermediateFieldSubgroup](../../../../../FieldTheoryAndPolynomials/FieldExtensions/InfiniteNamespaced.lean/declarations/galoiscoinsertionintermediatefieldsubgroup.md) | 211 | `declaration-track:66a4cd0e256bfb627f211b0425f69f01598d5c5c40aaed5d6b83459c0e6c6d9b` |
| 9 | `theorem` | [isOpen_iff_finite](../../../../../FieldTheoryAndPolynomials/FieldExtensions/InfiniteNamespaced.lean/declarations/isopen-iff-finite.md) | 220 | `result-track:9667113f1884a8f4eeed97ae66e8a6faace44f505115862f883545d32d13b3b9` |
| 10 | `theorem` | [normal_iff_isGalois](../../../../../FieldTheoryAndPolynomials/FieldExtensions/InfiniteNamespaced.lean/declarations/normal-iff-isgalois.md) | 240 | `result-track:c3c28fc5bdeee1a9e5a8cab3fec16298d0be430cda9e3ed543a172e6cdc97ff4` |
| 11 | `theorem` | [isOpen_and_normal_iff_finite_and_isGalois](../../../../../FieldTheoryAndPolynomials/FieldExtensions/InfiniteNamespaced.lean/declarations/isopen-and-normal-iff-finite-and-isgalois.md) | 269 | `result-track:a8b014a3b971c43cc55a76ef3d94f2af048af77446d90bdef9959badc4e61130` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d07d65dbe2745e9f522fc84d1f97549934ab8eb4e6ba4832e49b140e9df2ff0b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Infinite/Variant3917e1882d1fedaac0a1f54b10cbc3abd76e8880f614d75c41b17b03e89f51a1.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Infinite/Variant3917e1882d1fedaac0a1f54b10cbc3abd76e8880f614d75c41b17b03e89f51a1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
