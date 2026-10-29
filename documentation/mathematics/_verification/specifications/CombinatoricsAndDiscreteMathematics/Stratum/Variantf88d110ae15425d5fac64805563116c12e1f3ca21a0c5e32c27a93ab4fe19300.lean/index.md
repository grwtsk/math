# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Stratum.Variantf88d110ae15425d5fac64805563116c12e1f3ca21a0c5e32c27a93ab4fe19300

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe33409f2b91e7647dd2377152ff6aa63c82c238",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Stratum/Variantf88d110ae15425d5fac64805563116c12e1f3ca21a0c5e32c27a93ab4fe19300.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CombinatoricsAndDiscreteMathematics/Stratum/Variantf88d110ae15425d5fac64805563116c12e1f3ca21a0c5e32c27a93ab4fe19300.lean/index.md) · [Full source](../../../../../CombinatoricsAndDiscreteMathematics/Stratum/Variantf88d110ae15425d5fac64805563116c12e1f3ca21a0c5e32c27a93ab4fe19300.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe33409f2b91e7647dd2377152ff6aa63c82c238`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Stratum/Variantf88d110ae15425d5fac64805563116c12e1f3ca21a0c5e32c27a93ab4fe19300.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Stratum/Variantf88d110ae15425d5fac64805563116c12e1f3ca21a0c5e32c27a93ab4fe19300.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveFintype` — import line 2; external provider; requires a separately pinned dependency.
- `Mathematics.Core.SemanticIdentity` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Stratum](../../../../../CombinatoricsAndDiscreteMathematics/Stratum/Variantf88d110ae15425d5fac64805563116c12e1f3ca21a0c5e32c27a93ab4fe19300.lean/declarations/stratum--8dfd34c18bab76ddf307f0ed.md) | 9 | `declaration-track:8dfd34c18bab76ddf307f0ede675bceef13ac140da155cb4a74501d156b9a109` |
| 2 | `abbrev` | [StratumSet](../../../../../CombinatoricsAndDiscreteMathematics/Stratum/Variantf88d110ae15425d5fac64805563116c12e1f3ca21a0c5e32c27a93ab4fe19300.lean/declarations/stratumset--f51c2bc6b16b21b5047ef69c.md) | 21 | `declaration-track:f51c2bc6b16b21b5047ef69c1bf225a7f278a47791ff6db3d1485d676ef56422` |
| 3 | `inductive` | [SystemEdgeKind](../../../../../CombinatoricsAndDiscreteMathematics/Stratum/Variantf88d110ae15425d5fac64805563116c12e1f3ca21a0c5e32c27a93ab4fe19300.lean/declarations/systemedgekind--a904a4da31e823cb35929a50.md) | 23 | `declaration-track:a904a4da31e823cb35929a50cdc6257fbf62f6cacdaf7ff241e60c40a05d5f89` |
| 4 | `inductive` | [BoundaryKind](../../../../../CombinatoricsAndDiscreteMathematics/Stratum/Variantf88d110ae15425d5fac64805563116c12e1f3ca21a0c5e32c27a93ab4fe19300.lean/declarations/boundarykind--9b39581fb060094ab4296779.md) | 42 | `declaration-track:9b39581fb060094ab4296779761dc29cdef65f5224a8df5b6aa74448ce1bad3b` |
| 5 | `abbrev` | [BoundarySet](../../../../../CombinatoricsAndDiscreteMathematics/Stratum/Variantf88d110ae15425d5fac64805563116c12e1f3ca21a0c5e32c27a93ab4fe19300.lean/declarations/boundaryset--ac71fab40b07ae83f8d64862.md) | 55 | `declaration-track:ac71fab40b07ae83f8d64862ea6ff363f315346843f5ec56ebcf25ba6d096110` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0d45a085a064ef2e0ac77cdb8c61eba9d08c6f987d191b45b6ac9da093f96c85 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Stratum/Variantf88d110ae15425d5fac64805563116c12e1f3ca21a0c5e32c27a93ab4fe19300.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Stratum/Variantf88d110ae15425d5fac64805563116c12e1f3ca21a0c5e32c27a93ab4fe19300.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
