# Verification target: Away Adjoin Root Adjoin Root Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "771bdcca40715e181fa529c046b1eb16d0b00ee3",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/AdjoinRoot/Variantd2cfddebbe500ab03e7db9963d791185327ee7a9b18534ca9dbad3931846a37e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/AwayAdjoinRootAdjoinRootNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/AwayAdjoinRootAdjoinRootNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `771bdcca40715e181fa529c046b1eb16d0b00ee3`.

Source path: `GRWTSK/Algebra/AdjoinRoot/Variantd2cfddebbe500ab03e7db9963d791185327ee7a9b18534ca9dbad3931846a37e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/AdjoinRoot/Variantd2cfddebbe500ab03e7db9963d791185327ee7a9b18534ca9dbad3931846a37e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.AdjoinRoot` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Away.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Localization.awayEquivAdjoin](../../../../CommutativeAlgebra/AwayAdjoinRootAdjoinRootNamespaced.lean/declarations/localization-awayequivadjoin.md) | 32 | `declaration-track:72ed0ddd45f3a3ddbf1f2f237f2abfd28a68d49b10b3085740fdf3cbf457040f` |
| 2 | `theorem` | [IsLocalization.adjoin_inv](../../../../CommutativeAlgebra/AwayAdjoinRootAdjoinRootNamespaced.lean/declarations/islocalization-adjoin-inv.md) | 47 | `result-track:88413e17c8fab60265604b9de4ab08d09d79b3dc69df65d92e1663d751733b70` |
| 3 | `theorem` | [IsLocalization.Away.finitePresentation](../../../../CommutativeAlgebra/AwayAdjoinRootAdjoinRootNamespaced.lean/declarations/islocalization-away-finitepresentation.md) | 50 | `result-track:a09e88331aca9e889085f5af01086faaaa8857eaab71402c11749d02985a5602` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2f5ad9309fdb785cd54a4e79b09ba81b3bbb0c10eb1607c118fe27446291f94c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/AdjoinRoot/Variantd2cfddebbe500ab03e7db9963d791185327ee7a9b18534ca9dbad3931846a37e.lean","GRWTSK/_verification/specifications/Algebra/AdjoinRoot/Variantd2cfddebbe500ab03e7db9963d791185327ee7a9b18534ca9dbad3931846a37e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
