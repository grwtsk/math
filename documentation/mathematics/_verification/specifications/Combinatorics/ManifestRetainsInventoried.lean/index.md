# Verification target: Manifest Retains Inventoried

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b88e242f75178ae82230d3baecf5bcf91d7fd2db",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Manifest/Variant232332623127c4fee84b143b3020563a2918be886bc4a37aa3ebd9498a3e392d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ManifestRetainsInventoried.lean/index.md) · [Full source](../../../../Combinatorics/ManifestRetainsInventoried.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b88e242f75178ae82230d3baecf5bcf91d7fd2db`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Manifest/Variant232332623127c4fee84b143b3020563a2918be886bc4a37aa3ebd9498a3e392d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Manifest/Variant232332623127c4fee84b143b3020563a2918be886bc4a37aa3ebd9498a3e392d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Ecosystem.Artifact` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProjectManifest](../../../../Combinatorics/ManifestRetainsInventoried.lean/declarations/projectmanifest.md) | 13 | `declaration-track:3309ad543c241ff4e06ac96b752a8dfb0448bd673df7487e7843b7ff9870014e` |
| 2 | `theorem` | [retains_inventoried](../../../../Combinatorics/ManifestRetainsInventoried.lean/declarations/retains-inventoried.md) | 27 | `result-track:32340f484793818aeb9deff1b7f74a84e2948d6d7c549e23b81bedcfdf949f6f` |
| 3 | `theorem` | [no_fabricated_artifact](../../../../Combinatorics/ManifestRetainsInventoried.lean/declarations/no-fabricated-artifact.md) | 36 | `result-track:dc3e413ce778166d61099a72cbc5fe0c3680b1121f73d049149e917abfe7deaf` |
| 4 | `theorem` | [artifact_occurs_exactly_once](../../../../Combinatorics/ManifestRetainsInventoried.lean/declarations/artifact-occurs-exactly-once.md) | 45 | `result-track:037e62a973bf0bcdc995551b7a5bbf35187aa11e6e82b8888da648be868245e2` |
| 5 | `theorem` | [omission_rejected](../../../../Combinatorics/ManifestRetainsInventoried.lean/declarations/omission-rejected.md) | 56 | `result-track:933920a42a25a22a82b95279937de9788592fa672f1642fdfeb7b3acb77d302f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0160283b996a36655bca05e79910d12a410f0cde39814f223491ddfc57c60f5c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Manifest/Variant232332623127c4fee84b143b3020563a2918be886bc4a37aa3ebd9498a3e392d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Manifest/Variant232332623127c4fee84b143b3020563a2918be886bc4a37aa3ebd9498a3e392d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
