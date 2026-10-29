# Verification target: Expr Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ff41cb6c9fe8adbaca7c42ab230defc04935b9c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expr/Variant4e6622f2062f1ad1977399c943f67b5779e858293711fdec7bf1a4d7a7c898ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ExprEdition1.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ExprEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ff41cb6c9fe8adbaca7c42ab230defc04935b9c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expr/Variant4e6622f2062f1ad1977399c943f67b5779e858293711fdec7bf1a4d7a7c898ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expr/Variant4e6622f2062f1ad1977399c943f67b5779e858293711fdec7bf1a4d7a7c898ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Core.Id` — import line 2; external provider; requires a separately pinned dependency.
- `Mathematics.Core.IdElements.Digest` — import line 4; external provider; requires a separately pinned dependency.
- `Mathematics.Extractor.ExprElements.ExprId` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [BinderClass](../../../../../ComputerScience/AlgorithmsInComputerScience/ExprEdition1.lean/declarations/binderclass.md) | 21 | `declaration-track:647167e985a54bf7b2cb3746872b1a9fa8a3cca027780013acbb1b07dfeb8c3f` |
| 2 | `inductive` | [CanonicalLevel](../../../../../ComputerScience/AlgorithmsInComputerScience/ExprEdition1.lean/declarations/canonicallevel.md) | 28 | `declaration-track:23b6982b49f2d0e3aa2ff44b7b1e2aa5aa639a5833e0f35bd003226675478ba2` |
| 3 | `inductive` | [CanonicalLiteral](../../../../../ComputerScience/AlgorithmsInComputerScience/ExprEdition1.lean/declarations/canonicalliteral.md) | 38 | `declaration-track:ff65f327b9d494ad3fe7157f0db047944c591032bcc0f06d9eb1392ca91e53ef` |
| 4 | `inductive` | [CanonicalExpr](../../../../../ComputerScience/AlgorithmsInComputerScience/ExprEdition1.lean/declarations/canonicalexpr.md) | 45 | `declaration-track:4c8bd68e1bc1a0bb1884cf9f882db853b499893f21c03c2fa066886b00559fad` |
| 5 | `def` | [CanonicalExpr.childIds](../../../../../ComputerScience/AlgorithmsInComputerScience/ExprEdition1.lean/declarations/canonicalexpr-childids.md) | 63 | `declaration-track:2b1e4e9f113fee5a157b7aae7dfaab88de9a839e99194b5ea63d6110fd45265e` |
| 6 | `structure` | [PresentationVariant](../../../../../ComputerScience/AlgorithmsInComputerScience/ExprEdition1.lean/declarations/presentationvariant.md) | 72 | `declaration-track:f9a3932740036dae6fd616eb630fc09b653aa2d61cbe47915d8a7132e4ff3083` |
| 7 | `structure` | [ExpressionRecord](../../../../../ComputerScience/AlgorithmsInComputerScience/ExprEdition1.lean/declarations/expressionrecord.md) | 77 | `declaration-track:ad60237f3a325a8ef66a293cd57d38b0c2006e9f53cf12ea9962b538fd7e9016` |
| 8 | `structure` | [ExprPath](../../../../../ComputerScience/AlgorithmsInComputerScience/ExprEdition1.lean/declarations/exprpath.md) | 87 | `declaration-track:b15020837ef954e2afab681553b0ef19482a4cdee7dd329d07503bedda6644bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e0e69961da6ac69b83bafa6c7a479c28ffe3405bef25485a6596b072e2fc281b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expr/Variant4e6622f2062f1ad1977399c943f67b5779e858293711fdec7bf1a4d7a7c898ba.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Expr/Variant4e6622f2062f1ad1977399c943f67b5779e858293711fdec7bf1a4d7a7c898ba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
