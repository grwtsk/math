# Verification target: Semiconj Defs Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14339c9d42efb26312b39a93e90d8146a173278d",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant9328320873f419e656b689f2e830287c19840679ec853946c2167931859d68a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/SemiconjDefsPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/SemiconjDefsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14339c9d42efb26312b39a93e90d8146a173278d`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant9328320873f419e656b689f2e830287c19840679ec853946c2167931859d68a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant9328320873f419e656b689f2e830287c19840679ec853946c2167931859d68a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SemiconjBy](../../../../GroupTheoryAndGeneralizations/SemiconjDefsPublic.lean/declarations/semiconjby.md) | 39 | `declaration-track:5b3396220ffc0cf1c6f68269bfa9f57fd11e6a414b755e3c2aee5c60ec65b8ab` |
| 2 | `theorem` | [eq](../../../../GroupTheoryAndGeneralizations/SemiconjDefsPublic.lean/declarations/eq.md) | 46 | `result-track:0dab98c3e6405fdd228c45b2f65a5944cd19a40f648d601ced770c89db853a70` |
| 3 | `theorem` | [mul_right](../../../../GroupTheoryAndGeneralizations/SemiconjDefsPublic.lean/declarations/mul-right.md) | 57 | `result-track:26f0307583df319d6222f55d0b00fc9e70de4b50700c26e31f136db50ad2410e` |
| 4 | `theorem` | [mul_left](../../../../GroupTheoryAndGeneralizations/SemiconjDefsPublic.lean/declarations/mul-left.md) | 67 | `result-track:ce73fe711422c1018d3c095f7289572009c74c8f441edbf7ea996bb47a633c95` |
| 5 | `theorem` | [isTrans](../../../../GroupTheoryAndGeneralizations/SemiconjDefsPublic.lean/declarations/istrans.md) | 75 | `result-track:268de9ccc23abd54745d45bdc46f619ce8f46469484590cfa66b1f879128524b` |
| 6 | `theorem` | [one_right](../../../../GroupTheoryAndGeneralizations/SemiconjDefsPublic.lean/declarations/one-right.md) | 86 | `result-track:c6f577273470b8324b0a229d57c1fe5aada1518b1dbc8c271ad94f014bd1a991` |
| 7 | `theorem` | [one_left](../../../../GroupTheoryAndGeneralizations/SemiconjDefsPublic.lean/declarations/one-left.md) | 90 | `result-track:897d9336081268b5626548aaa96110a91f2e4a5f580baae8b15573c1a7108531` |
| 8 | `theorem` | [refl](../../../../GroupTheoryAndGeneralizations/SemiconjDefsPublic.lean/declarations/refl.md) | 97 | `result-track:3de96bee48e7e59756beddf802c83f19ab4c445e172afcb3e7f7ef556c01d54e` |
| 9 | `theorem` | [pow_right](../../../../GroupTheoryAndGeneralizations/SemiconjDefsPublic.lean/declarations/pow-right.md) | 109 | `result-track:cae2558263c0cd5cb69c441e0a4bd37c75f123498a62edf216052f272cb6589c` |
| 10 | `theorem` | [conj_mk](../../../../GroupTheoryAndGeneralizations/SemiconjDefsPublic.lean/declarations/conj-mk.md) | 126 | `result-track:f58afca7859b8352431231d84b0427f1005eb2ece9ed1b6b62f33c4e46ff5edf` |
| 11 | `theorem` | [conj_iff](../../../../GroupTheoryAndGeneralizations/SemiconjDefsPublic.lean/declarations/conj-iff.md) | 130 | `result-track:5d5179eb58c41a636c49e004eb64bd2fd62b76210ff846ad78733d4ac34f7e17` |
| 12 | `theorem` | [semiconjBy_iff_eq](../../../../GroupTheoryAndGeneralizations/SemiconjDefsPublic.lean/declarations/semiconjby-iff-eq.md) | 142 | `result-track:5536346a6b259cc344349859ad6fda79f389551d85b5c570a64786016f45c52a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e7f0be8572f7b43712b00c2b8bf1ada658879a7780646c3b04416d6da23357e7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Defs/Variant9328320873f419e656b689f2e830287c19840679ec853946c2167931859d68a6.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Defs/Variant9328320873f419e656b689f2e830287c19840679ec853946c2167931859d68a6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
