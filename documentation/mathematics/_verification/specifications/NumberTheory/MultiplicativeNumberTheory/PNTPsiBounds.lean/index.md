# Verification target: PNTPsi Bounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "510488f3941415f627465d15fa4a39fddfb20d78",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/PNTPsiBounds/Variantc6588e3a5cdb050e8f562cf8362856537f6e69b59d7962e870fe89040a9cb519.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/MultiplicativeNumberTheory/PNTPsiBounds.lean/index.md) · [Full source](../../../../../NumberTheory/MultiplicativeNumberTheory/PNTPsiBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `510488f3941415f627465d15fa4a39fddfb20d78`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/PNTPsiBounds/Variantc6588e3a5cdb050e8f562cf8362856537f6e69b59d7962e870fe89040a9cb519.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/PNTPsiBounds/Variantc6588e3a5cdb050e8f562cf8362856537f6e69b59d7962e870fe89040a9cb519.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.ChebyshevPsi` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [allChecks_11723_slope111_100](../../../../../NumberTheory/MultiplicativeNumberTheory/PNTPsiBounds.lean/declarations/allchecks-11723-slope111-100.md) | 28 | `result-track:fe782dbc4d551d31f843eef552e98f3d18cd1032b06af14e6639a2ab70932fd4` |
| 2 | `theorem` | [checkPsiLeMul_le_11723](../../../../../NumberTheory/MultiplicativeNumberTheory/PNTPsiBounds.lean/declarations/checkpsilemul-le-11723.md) | 33 | `result-track:f6823adfb4aca1fd22a73ea78fa4386ac293d3624c9bdda1f2f1bdb5f4249316` |
| 3 | `theorem` | [psi_le_nat](../../../../../NumberTheory/MultiplicativeNumberTheory/PNTPsiBounds.lean/declarations/psi-le-nat.md) | 40 | `result-track:2e0a753f470e9ed5fdf0cb000802d4186e1969f7d80345620dd838614332f574` |
| 4 | `theorem` | [psi_le_mul_11723](../../../../../NumberTheory/MultiplicativeNumberTheory/PNTPsiBounds.lean/declarations/psi-le-mul-11723.md) | 49 | `result-track:a54374a20b692003ded8a5fbb8a5a7bc0281a79fb5e9245bf842ab826a412765` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bd05e052b1f7da5c125877e8a1cee78b02878284946f22943348d44e7b95c3d5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/PNTPsiBounds/Variantc6588e3a5cdb050e8f562cf8362856537f6e69b59d7962e870fe89040a9cb519.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/PNTPsiBounds/Variantc6588e3a5cdb050e8f562cf8362856537f6e69b59d7962e870fe89040a9cb519.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
