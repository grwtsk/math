# Verification target: Semiconj Defs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa97ad1f631edc17acafa4c13a49dc4fa968a673",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant06191af8e9145cd6def6fd861745e59f505cf9b0fdd7b2d829cb57c9643fd092.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/SemiconjDefs.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/SemiconjDefs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa97ad1f631edc17acafa4c13a49dc4fa968a673`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant06191af8e9145cd6def6fd861745e59f505cf9b0fdd7b2d829cb57c9643fd092.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant06191af8e9145cd6def6fd861745e59f505cf9b0fdd7b2d829cb57c9643fd092.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Defs.Unbundled` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SemiconjBy](../../../../GroupTheoryAndGeneralizations/SemiconjDefs.lean/declarations/semiconjby.md) | 36 | `declaration-track:62d795d533c282e5d2d27ca17aa42f39a1d3c964f301c5c1f158b3db17520d60` |
| 2 | `theorem` | [eq](../../../../GroupTheoryAndGeneralizations/SemiconjDefs.lean/declarations/eq.md) | 43 | `result-track:73a95227a0bb11ee4f1d8cfb446ef6919230542f5fa0875f89104df62d7802f8` |
| 3 | `theorem` | [mul_right](../../../../GroupTheoryAndGeneralizations/SemiconjDefs.lean/declarations/mul-right.md) | 54 | `result-track:455639931b4bf13534c2e8ab09167db46cf1908e9275a833f799434b130df506` |
| 4 | `theorem` | [mul_left](../../../../GroupTheoryAndGeneralizations/SemiconjDefs.lean/declarations/mul-left.md) | 64 | `result-track:d462940e1efaad039d5de5720ef46b39ec7dc88ba45a6b546c8e9432bc11c0c8` |
| 5 | `theorem` | [transitive](../../../../GroupTheoryAndGeneralizations/SemiconjDefs.lean/declarations/transitive.md) | 72 | `result-track:bb1de445a1e36581781d7cca08d37569f4e159746d7fee42c1f6c35d7035da88` |
| 6 | `theorem` | [one_right](../../../../GroupTheoryAndGeneralizations/SemiconjDefs.lean/declarations/one-right.md) | 83 | `result-track:28d35f33332fd0af98674a747bea8e40d9ee5641d02611178b652f4f101a255c` |
| 7 | `theorem` | [one_left](../../../../GroupTheoryAndGeneralizations/SemiconjDefs.lean/declarations/one-left.md) | 87 | `result-track:1c3a506b64fe6c9078e461f72f1e762cfc9dab43f607b8aeac3b1237b7a6d9cf` |
| 8 | `theorem` | [reflexive](../../../../GroupTheoryAndGeneralizations/SemiconjDefs.lean/declarations/reflexive.md) | 94 | `result-track:baaaf072f3c2a659077d9854d294e2c752f4fd1f236e1a475be34d19a6ed9ad8` |
| 9 | `theorem` | [pow_right](../../../../GroupTheoryAndGeneralizations/SemiconjDefs.lean/declarations/pow-right.md) | 104 | `result-track:51f314241195b8a5f5829a1c449b5eabb7973b3688928a5413dba09f93e1d91e` |
| 10 | `theorem` | [conj_mk](../../../../GroupTheoryAndGeneralizations/SemiconjDefs.lean/declarations/conj-mk.md) | 121 | `result-track:9e13b7ba640bac1339cf2cebec134c5aff0fd7a6117efc6b71a7a5e6eaeff519` |
| 11 | `theorem` | [conj_iff](../../../../GroupTheoryAndGeneralizations/SemiconjDefs.lean/declarations/conj-iff.md) | 125 | `result-track:a58b12828d55404b3e284ee117b542152e42b464d1d7187eb8a661414a2a9d6f` |
| 12 | `theorem` | [semiconjBy_iff_eq](../../../../GroupTheoryAndGeneralizations/SemiconjDefs.lean/declarations/semiconjby-iff-eq.md) | 137 | `result-track:dd441fd09961b0e1eadbc4dff05e2eddbbd7764d65130c1fdaf5bf2642b01e6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1a53e52ed30803f5e851322c74f914e0e77b5e85fafc8fc0e394b43c738db32d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Defs/Variant06191af8e9145cd6def6fd861745e59f505cf9b0fdd7b2d829cb57c9643fd092.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Defs/Variant06191af8e9145cd6def6fd861745e59f505cf9b0fdd7b2d829cb57c9643fd092.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
