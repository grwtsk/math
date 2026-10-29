# Verification target: Zorn Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13576090e34fc90c16ba637bcc0c92032ac30911",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant6f7b3433d5c9bc8879c8db47c22c0aac0f5ee60c46aac00f7ec7a547982bbd14.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ZornPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ZornPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13576090e34fc90c16ba637bcc0c92032ac30911`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant6f7b3433d5c9bc8879c8db47c22c0aac0f5ee60c46aac00f7ec7a547982bbd14.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant6f7b3433d5c9bc8879c8db47c22c0aac0f5ee60c46aac00f7ec7a547982bbd14.lean.json)

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
| 1 | `theorem` | [exists_maximal_of_chains_bounded](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ZornPublic.lean/declarations/exists-maximal-of-chains-bounded.md) | 76 | `result-track:22b3ce7fd0c46c02acccb823aca9c8f01d1c38efca1b0687f0fa83b2fc66d713` |
| 2 | `theorem` | [exists_maximal_of_nonempty_chains_bounded](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ZornPublic.lean/declarations/exists-maximal-of-nonempty-chains-bounded.md) | 90 | `result-track:868c7c745a5b80957e95f234f7065e832f7d23dc85da930c33c65674d0928f9c` |
| 3 | `theorem` | [zorn_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ZornPublic.lean/declarations/zorn-le-source-edition-2.md) | 104 | `result-track:651a6cb0baf32b18bb1a55cba80c3a402837c4b93f262cd0c34cb8b264972490` |
| 4 | `theorem` | [zorn_le_nonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ZornPublic.lean/declarations/zorn-le-nonempty-source-edition-2.md) | 108 | `result-track:ea78bdd12e0bcb737a16e05fcc2a4e5350d02ba8f67b5d327d5a68b7c897da60` |
| 5 | `theorem` | [zorn_le₀](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ZornPublic.lean/declarations/zorn-le.md) | 113 | `result-track:1818b0b2ff84cf7b29e962b63db5238f025303f46fcaa5548d0f251a72f7751c` |
| 6 | `theorem` | [zorn_le_nonempty₀](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ZornPublic.lean/declarations/zorn-le-nonempty.md) | 126 | `result-track:3b5e24c2b366f594a8c4fe2e366de3624a6bb9cd6b46525adab727456039f564` |
| 7 | `theorem` | [zorn_le_nonempty_Ici₀](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ZornPublic.lean/declarations/zorn-le-nonempty-ici.md) | 138 | `result-track:4ab007e135f8171ba1185ef8d6159bc707b88b03d75e164731099c7fa76636e3` |
| 8 | `theorem` | [zorn_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ZornPublic.lean/declarations/zorn-subset.md) | 148 | `result-track:1bbe9daec1e9b7ec6982487cec67503a7141f6c11505d264654e0d2ea58a1153` |
| 9 | `theorem` | [zorn_subset_nonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ZornPublic.lean/declarations/zorn-subset-nonempty.md) | 152 | `result-track:d504409a0afb0ccd058cdbcba3e65c71b01f0cf3e5fec6c1505fc9d60ce6fa77` |
| 10 | `theorem` | [zorn_superset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ZornPublic.lean/declarations/zorn-superset.md) | 157 | `result-track:872f2f8a51c41c647d1645e1c6d4892a3f44a2059420261cff40e97df7e02dcd` |
| 11 | `theorem` | [zorn_superset_nonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ZornPublic.lean/declarations/zorn-superset-nonempty.md) | 161 | `result-track:d042e56835607b9a2fa142ac39e6c61e583c832d2eaf34cb5c9e651f53009e7b` |
| 12 | `theorem` | [IsChain.exists_maxChain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ZornPublic.lean/declarations/ischain-exists-maxchain.md) | 168 | `result-track:5991ca571d25957e558d34c46853d967bbd34a37e2bb74260f44b1af9c1eac1a` |
| 13 | `lemma` | [_root_.IsChain.exists_subset_flag](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ZornPublic.lean/declarations/root-ischain-exists-subset-flag.md) | 189 | `result-track:d513160f77294372761509139b0ed9a1a81b0a14115c42cb4575ba9312ed4a2c` |
| 14 | `lemma` | [exists_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ZornPublic.lean/declarations/exists-mem.md) | 192 | `result-track:d40a202daf60454b27d95d174d19b796d436dc155971190cfe05be61c3ee874a` |
| 15 | `lemma` | [exists_mem_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ZornPublic.lean/declarations/exists-mem-mem.md) | 196 | `result-track:2160088a4c733f1cce0a6131907315c2e518b19de89ad71a8ca758d323c0a8ec` |
| 16 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ZornPublic.lean/declarations/instance.md) | 199 | `declaration-track:7db3f4e19c059e8c156017bac77a4577022335a534dc1dea7fe7a0e597bec313` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b6cf9c69aa38b341ccbfba9f968485cf3f45237491ece7bd8d54e893290fe47d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant6f7b3433d5c9bc8879c8db47c22c0aac0f5ee60c46aac00f7ec7a547982bbd14.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Zorn/Variant6f7b3433d5c9bc8879c8db47c22c0aac0f5ee60c46aac00f7ec7a547982bbd14.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
