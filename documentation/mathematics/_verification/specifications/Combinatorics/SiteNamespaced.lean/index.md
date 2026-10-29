# Verification target: Site Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2500d11432c7fe586d3d1fb19faf36a1dff58e37",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Site/Variant00d93b83804be85ffea90c6af2bf27cd9f565396dd580404eb1c55ebb03f8c16.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/SiteNamespaced.lean/index.md) · [Full source](../../../../Combinatorics/SiteNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2500d11432c7fe586d3d1fb19faf36a1dff58e37`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Site/Variant00d93b83804be85ffea90c6af2bf27cd9f565396dd580404eb1c55ebb03f8c16.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Site/Variant00d93b83804be85ffea90c6af2bf27cd9f565396dd580404eb1c55ebb03f8c16.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.ContinuousAssurance.WorldModel.Carrier` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Defs.PartialOrder` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteCommunicationSite](../../../../Combinatorics/SiteNamespaced.lean/declarations/finitecommunicationsite.md) | 24 | `declaration-track:6c9016c115166390469dda24e571746b54f4ebb20085d880c76f67f159379b06` |
| 2 | `def` | [le](../../../../Combinatorics/SiteNamespaced.lean/declarations/le.md) | 43 | `declaration-track:4c9f7a7cf1f4054ce874f83dc88251c562ec04fb6f86a908b906a1062f26b469` |
| 3 | `instance` | [(anonymous)](../../../../Combinatorics/SiteNamespaced.lean/declarations/instance.md) | 46 | `declaration-track:36dcd109f4e7a883a261eb2f5aca3dbd255a4be480bb253e050ac8be62d473ff` |
| 4 | `theorem` | [le_refl](../../../../Combinatorics/SiteNamespaced.lean/declarations/le-refl.md) | 50 | `result-track:c88a7d7d21d28ef951bfa62fa24c4aad86aa92e3594c2a21fc3673aeedc7175d` |
| 5 | `theorem` | [le_trans](../../../../Combinatorics/SiteNamespaced.lean/declarations/le-trans.md) | 55 | `result-track:a5a6efd4b38dff528547c177d7f205779ea511d74df4790f42bf7a467e5ef8cd` |
| 6 | `theorem` | [cover_member_below](../../../../Combinatorics/SiteNamespaced.lean/declarations/cover-member-below.md) | 65 | `result-track:a2fd41767d08090663bf52a30c2f5a7495aa7ab62f57494afb98a39bef912244` |
| 7 | `theorem` | [cover_finite](../../../../Combinatorics/SiteNamespaced.lean/declarations/cover-finite.md) | 73 | `result-track:35a45a51793ee8458e48f60fc80e5476a61f7b8f0ce0777242a35db842f545ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5e1d2c9ed2fba5e9e543e4245ccc7993b4935712cbf4d658c47fa5b1144954c3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Site/Variant00d93b83804be85ffea90c6af2bf27cd9f565396dd580404eb1c55ebb03f8c16.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Site/Variant00d93b83804be85ffea90c6af2bf27cd9f565396dd580404eb1c55ebb03f8c16.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
