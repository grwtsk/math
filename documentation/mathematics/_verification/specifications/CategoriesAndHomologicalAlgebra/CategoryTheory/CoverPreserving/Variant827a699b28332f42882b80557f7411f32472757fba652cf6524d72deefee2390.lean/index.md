# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CoverPreserving.Variant827a699b28332f42882b80557f7411f32472757fba652cf6524d72deefee2390

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a256024bc198058fd0eb2273de3d6839570b832f",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant827a699b28332f42882b80557f7411f32472757fba652cf6524d72deefee2390.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant827a699b28332f42882b80557f7411f32472757fba652cf6524d72deefee2390.lean/index.md) · [Full source](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant827a699b28332f42882b80557f7411f32472757fba652cf6524d72deefee2390.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a256024bc198058fd0eb2273de3d6839570b832f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant827a699b28332f42882b80557f7411f32472757fba652cf6524d72deefee2390.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant827a699b28332f42882b80557f7411f32472757fba652cf6524d72deefee2390.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.Flat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Sheaf` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CoverPreserving](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant827a699b28332f42882b80557f7411f32472757fba652cf6524d72deefee2390.lean/declarations/coverpreserving--a7bfaee84dd6af1d230503f6.md) | 72 | `declaration-track:a7bfaee84dd6af1d230503f6144461fe858c8c3d25b5cb86bb18a48ed606c8e1` |
| 2 | `theorem` | [idCoverPreserving](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant827a699b28332f42882b80557f7411f32472757fba652cf6524d72deefee2390.lean/declarations/idcoverpreserving--3e1ed5fdad4d13c03296e9fd.md) | 77 | `result-track:3e1ed5fdad4d13c03296e9fd90b022ce2295d81e122b806a7580add364751e25` |
| 3 | `theorem` | [CoverPreserving.comp](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant827a699b28332f42882b80557f7411f32472757fba652cf6524d72deefee2390.lean/declarations/coverpreserving-comp--9f758cb953c1219ace6ed074.md) | 82 | `result-track:9f758cb953c1219ace6ed07423fa0d7bfa4f83c5a90f6150c783427bd265b4ac` |
| 4 | `structure` | [CompatiblePreserving](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant827a699b28332f42882b80557f7411f32472757fba652cf6524d72deefee2390.lean/declarations/compatiblepreserving--eae786f8ba74ea62d537c4c4.md) | 96 | `declaration-track:eae786f8ba74ea62d537c4c48ed1390b3900d1372a9a07f67ea3563a0a006417` |
| 5 | `theorem` | [Presieve.FamilyOfElements.Compatible.functorPushforward](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant827a699b28332f42882b80557f7411f32472757fba652cf6524d72deefee2390.lean/declarations/presieve-familyofelements-compatible-functorpushforward--71580f2d2cb40faf3f86c6a7.md) | 109 | `result-track:71580f2d2cb40faf3f86c6a7b7275fde97d0b88a3e96d76676513c5e4fdb2364` |
| 6 | `theorem` | [CompatiblePreserving.apply_map](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant827a699b28332f42882b80557f7411f32472757fba652cf6524d72deefee2390.lean/declarations/compatiblepreserving-apply-map--d923267d79cd0e9008d2c420.md) | 122 | `result-track:d923267d79cd0e9008d2c42048fda7f754a4da9afa7e5642918fd9cf0739768e` |
| 7 | `theorem` | [compatiblePreservingOfFlat](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant827a699b28332f42882b80557f7411f32472757fba652cf6524d72deefee2390.lean/declarations/compatiblepreservingofflat--7706701f15914a9858526369.md) | 132 | `result-track:7706701f15914a9858526369d75a2d74ead1b1c06dc9375f0603f69b2c0c19b9` |
| 8 | `theorem` | [compatiblePreservingOfDownwardsClosed](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant827a699b28332f42882b80557f7411f32472757fba652cf6524d72deefee2390.lean/declarations/compatiblepreservingofdownwardsclosed--f753bad09521fe16c18f227b.md) | 167 | `result-track:f753bad09521fe16c18f227b723ea9a6ac20144e319e8dac97e0fe24bdc587f2` |
| 9 | `theorem` | [pullback_isSheaf_of_coverPreserving](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant827a699b28332f42882b80557f7411f32472757fba652cf6524d72deefee2390.lean/declarations/pullback-issheaf-of-coverpreserving--dc00dfd39cde8cbc02af9049.md) | 184 | `result-track:dc00dfd39cde8cbc02af9049338c50c591449091c191cbbeef757c8197462300` |
| 10 | `def` | [pullbackSheaf](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant827a699b28332f42882b80557f7411f32472757fba652cf6524d72deefee2390.lean/declarations/pullbacksheaf--3118387e27d91cae7acfc98f.md) | 209 | `declaration-track:3118387e27d91cae7acfc98f5d0213ebb9ad5d63e4ff0f0badbee9f91d635835` |
| 11 | `def` | [Sites.pullback](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant827a699b28332f42882b80557f7411f32472757fba652cf6524d72deefee2390.lean/declarations/sites-pullback--8ed9e224dcb83d2c95b91a7f.md) | 220 | `declaration-track:8ed9e224dcb83d2c95b91a7f5b3b2c164e1efd15c04d7538a29a2e246fd5f21d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7b1d93d289b7a38649111f94febdc4123a2489989a4b51df70b3f9b1ae7da089 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant827a699b28332f42882b80557f7411f32472757fba652cf6524d72deefee2390.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverPreserving/Variant827a699b28332f42882b80557f7411f32472757fba652cf6524d72deefee2390.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
