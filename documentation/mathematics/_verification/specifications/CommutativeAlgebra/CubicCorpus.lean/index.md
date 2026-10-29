# Verification target: Cubic Corpus

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7612cddddf16b169388e7aaf1e3af3f7ccaa2fc6",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/CubicCorpus/Variant09b656f8496d5d54c6a84e8794d05749003f9da3f1b13d390d0b70e3aba3f64e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/CubicCorpus.lean/index.md) · [Full source](../../../../CommutativeAlgebra/CubicCorpus.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7612cddddf16b169388e7aaf1e3af3f7ccaa2fc6`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/CubicCorpus/Variant09b656f8496d5d54c6a84e8794d05749003f9da3f1b13d390d0b70e3aba3f64e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/CubicCorpus/Variant09b656f8496d5d54c6a84e8794d05749003f9da3f1b13d390d0b70e3aba3f64e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Discovery.IdeasCorpus` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Polynomial.Potential` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [source](../../../../CommutativeAlgebra/CubicCorpus.lean/declarations/source.md) | 17 | `declaration-track:42ae37ed2fddda71c20e9db8f13dc112379aeb342aacae77984964416c59b4db` |
| 2 | `def` | [quadraticCarrier](../../../../CommutativeAlgebra/CubicCorpus.lean/declarations/quadraticcarrier.md) | 42 | `declaration-track:af55c5c2e443d621d15a7528ba95ff480d9460d08a62752a730cab9b4e1af802` |
| 3 | `def` | [quadraticEvaluation](../../../../CommutativeAlgebra/CubicCorpus.lean/declarations/quadraticevaluation.md) | 61 | `declaration-track:6f20b899bdc4e678ca64c5279ed79b1fca665508cc92a6eb5d1697ae3977b4ac` |
| 4 | `def` | [cubicCarrier](../../../../CommutativeAlgebra/CubicCorpus.lean/declarations/cubiccarrier.md) | 79 | `declaration-track:d132a729c9407eb8c62657cd5589557ba08a196c2a32fabbce7e680f174d90fb` |
| 5 | `def` | [cubicEvaluation](../../../../CommutativeAlgebra/CubicCorpus.lean/declarations/cubicevaluation.md) | 98 | `declaration-track:06276293785334867a35e2b82af7890ac6e9acc6f7dab4d97228b53891b4ae7d` |
| 6 | `def` | [cubicDerivative](../../../../CommutativeAlgebra/CubicCorpus.lean/declarations/cubicderivative.md) | 116 | `declaration-track:bc06c59e2d83f0a1eea89b3651551888afa75468c0039d9cdf152fb1277dd6e5` |
| 7 | `def` | [cubicPotentialEvaluation](../../../../CommutativeAlgebra/CubicCorpus.lean/declarations/cubicpotentialevaluation.md) | 134 | `declaration-track:b1f365d9f4c8e5fc36e9a5ded1306e02432e20b351e08316c5657e85348c1e06` |
| 8 | `def` | [links](../../../../CommutativeAlgebra/CubicCorpus.lean/declarations/links.md) | 153 | `declaration-track:1d091254de17e974a1b30e33f739fb218d1f350caf882105491d16f7d4b73109` |
| 9 | `theorem` | [links_length](../../../../CommutativeAlgebra/CubicCorpus.lean/declarations/links-length.md) | 162 | `result-track:cd9fb1f646e49d93d9a3655129a8d1542ecacf8d68758a746da319aadeebfd3e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b3caecf798e1736b76757ff017b81b89f3b0bfc5e8746ce47be994be0e42218f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/CubicCorpus/Variant09b656f8496d5d54c6a84e8794d05749003f9da3f1b13d390d0b70e3aba3f64e.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/CubicCorpus/Variant09b656f8496d5d54c6a84e8794d05749003f9da3f1b13d390d0b70e3aba3f64e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
