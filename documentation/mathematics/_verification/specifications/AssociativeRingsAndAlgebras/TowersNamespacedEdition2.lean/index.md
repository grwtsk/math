# Verification target: Towers Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82a37056d3cd06bc47a733c2c5da3f3da3345354",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Towers/Variante26c2883705e111f3cf769270af57335b80e609d16c5cbd5955a69086cc0fd35.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/TowersNamespacedEdition2.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/TowersNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82a37056d3cd06bc47a733c2c5da3f3da3345354`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Towers/Variante26c2883705e111f3cf769270af57335b80e609d16c5cbd5955a69086cc0fd35.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Towers/Variante26c2883705e111f3cf769270af57335b80e609d16c5cbd5955a69086cc0fd35.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.IntermediateField.Adjoin.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Fold` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cumulativeField](../../../../AssociativeRingsAndAlgebras/TowersNamespacedEdition2.lean/declarations/cumulativefield.md) | 26 | `declaration-track:26444bd43b4ae56db901352c1943b198c7849bf9a461dd9bce07103749000f12` |
| 2 | `theorem` | [cumulative_field_mono](../../../../AssociativeRingsAndAlgebras/TowersNamespacedEdition2.lean/declarations/cumulative-field-mono.md) | 30 | `result-track:c0890c866ec61acac968b2f28e7c0543a01ab357641acb0a1faab0128573c4aa` |
| 3 | `theorem` | [component_le_cumulative](../../../../AssociativeRingsAndAlgebras/TowersNamespacedEdition2.lean/declarations/component-le-cumulative.md) | 35 | `result-track:e599b03095293f3cea3c62d8e546be5539689795f78fa0804e74d216e779880d` |
| 4 | `def` | [cumulativeInclusion](../../../../AssociativeRingsAndAlgebras/TowersNamespacedEdition2.lean/declarations/cumulativeinclusion.md) | 40 | `declaration-track:f3a44c335a1d8755fd692f86c8fa275dc838498dc7076210a6ecb190d39c4946` |
| 5 | `theorem` | [cumulative_inclusion_comp](../../../../AssociativeRingsAndAlgebras/TowersNamespacedEdition2.lean/declarations/cumulative-inclusion-comp.md) | 45 | `result-track:458db1199657b2432cd3c22afd36a08893d614c89c125bfdcd469bc5d72f0743` |
| 6 | `structure` | [FiniteInverseSystem](../../../../AssociativeRingsAndAlgebras/TowersNamespacedEdition2.lean/declarations/finiteinversesystem.md) | 53 | `declaration-track:127a161deb739fc3572ff311d798cd7fa02846cd6fd4a01ff721c55501b10f89` |
| 7 | `def` | [CompatibleSection](../../../../AssociativeRingsAndAlgebras/TowersNamespacedEdition2.lean/declarations/compatiblesection.md) | 69 | `declaration-track:54b047971d51c9657bbabd251d3835a587cd2419e27bc8ee2029ebe290f6a818` |
| 8 | `theorem` | [compatible_section_restrict](../../../../AssociativeRingsAndAlgebras/TowersNamespacedEdition2.lean/declarations/compatible-section-restrict.md) | 73 | `result-track:0da017f3df0539a54aca2d9702869ad258d7bcf72876675265fa35b675bb813a` |
| 9 | `def` | [constantInverseSystem](../../../../AssociativeRingsAndAlgebras/TowersNamespacedEdition2.lean/declarations/constantinversesystem.md) | 79 | `declaration-track:d3b06e86c1abb163ea59ec90e9927f14777c5df282131981db97acce76142a91` |
| 10 | `def` | [sectionFromLast](../../../../AssociativeRingsAndAlgebras/TowersNamespacedEdition2.lean/declarations/sectionfromlast.md) | 88 | `declaration-track:b49c58a92370cb2610105b16fc20efbc62c00a38a1ee07664ea1e762699d0c7d` |
| 11 | `theorem` | [section_from_last_compatible](../../../../AssociativeRingsAndAlgebras/TowersNamespacedEdition2.lean/declarations/section-from-last-compatible.md) | 93 | `result-track:6d1d0ed498366f5633d5f925ac80e17b7b61e76bf750efd669614db0522136f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=14e313d7596d754b96572680daccf1169f57d5b90cac6d5f2bf431bbee80eb3e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Towers/Variante26c2883705e111f3cf769270af57335b80e609d16c5cbd5955a69086cc0fd35.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Towers/Variante26c2883705e111f3cf769270af57335b80e609d16c5cbd5955a69086cc0fd35.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
