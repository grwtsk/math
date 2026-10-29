# Verification target: Pow Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6873a8cf18c17369e5834a2e5084eb017a21c292",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantb2781c21c39de75badfc2a305a9f848c32329e384bb9e9f3ea220b3b41ce10ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/PowPublic.lean/index.md) · [Full source](../../../../RealFunctions/PowPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6873a8cf18c17369e5834a2e5084eb017a21c292`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantb2781c21c39de75badfc2a305a9f848c32329e384bb9e9f3ea220b3b41ce10ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantb2781c21c39de75badfc2a305a9f848c32329e384bb9e9f3ea220b3b41ce10ea.lean.json)

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
| 1 | `theorem` | [HasStrictDerivAt.fun_pow'](../../../../RealFunctions/PowPublic.lean/declarations/hasstrictderivat-fun-pow-source-edition-2.md) | 34 | `result-track:79f69f92524a162ebda0082d5b85daaf7c8ba2c887fcd60ad8c6bc87f94861a3` |
| 2 | `theorem` | [HasStrictDerivAt.pow'](../../../../RealFunctions/PowPublic.lean/declarations/hasstrictderivat-pow-source-edition-3.md) | 39 | `result-track:eeef4b304c8ce3a4d277c63bef8f7c3fa6943aebef2d37546e32f6dbcd500747` |
| 3 | `theorem` | [HasDerivWithinAt.fun_pow'](../../../../RealFunctions/PowPublic.lean/declarations/hasderivwithinat-fun-pow-source-edition-2.md) | 44 | `result-track:c76dac9fb66e5b02bbce1f28c702b1d40ac7d1937f0425e679ef5340dfb7376d` |
| 4 | `theorem` | [HasDerivWithinAt.pow'](../../../../RealFunctions/PowPublic.lean/declarations/hasderivwithinat-pow-source-edition-2.md) | 49 | `result-track:dc3de1de57145724ef6b460db1ad6c419826e061432148107421a25c8a509dfd` |
| 5 | `theorem` | [HasDerivAt.fun_pow'](../../../../RealFunctions/PowPublic.lean/declarations/hasderivat-fun-pow.md) | 53 | `result-track:ce0cd3771f8321fd99a0f99cdbd0afb3843dc713b7281bc539a020bafd8582aa` |
| 6 | `theorem` | [HasDerivAt.pow'](../../../../RealFunctions/PowPublic.lean/declarations/hasderivat-pow-source-edition-2.md) | 58 | `result-track:c52bc487dc65abd0faa72292a3a16735d8b1722510a7f127ec0e915ac148788b` |
| 7 | `theorem` | [derivWithin_fun_pow'](../../../../RealFunctions/PowPublic.lean/declarations/derivwithin-fun-pow.md) | 63 | `result-track:feba2e78b31e6a9544933505afce4bd54135f343318bffc8e78219169f20f13b` |
| 8 | `theorem` | [derivWithin_pow'](../../../../RealFunctions/PowPublic.lean/declarations/derivwithin-pow.md) | 71 | `result-track:730e744eaec129d7ac8584f1a7d8076306f7a29a4f218dcb15e6ea210fceb4d8` |
| 9 | `theorem` | [deriv_fun_pow'](../../../../RealFunctions/PowPublic.lean/declarations/deriv-fun-pow.md) | 77 | `result-track:47ce9d50b8e4a5564e8e2a43cc45ea1e900ffc881a38ae8b315e32d1b4fc6a17` |
| 10 | `theorem` | [deriv_pow'](../../../../RealFunctions/PowPublic.lean/declarations/deriv-pow.md) | 82 | `result-track:0f368a31db8396a68124959d19b4ee68b15830adeafaa81610085a8969cc25d7` |
| 11 | `theorem` | [HasStrictDerivAt.fun_pow](../../../../RealFunctions/PowPublic.lean/declarations/hasstrictderivat-fun-pow.md) | 94 | `result-track:19be05276beadbd4b38c808e3de9efc1538f59e18486108e5961d63de36fdb5c` |
| 12 | `theorem` | [HasStrictDerivAt.pow](../../../../RealFunctions/PowPublic.lean/declarations/hasstrictderivat-pow-source-edition-2.md) | 98 | `result-track:bd95cc9409a4e44728ca79df39ee7a46bfe60f96d46ce01f146705782e108057` |
| 13 | `theorem` | [HasDerivWithinAt.fun_pow](../../../../RealFunctions/PowPublic.lean/declarations/hasderivwithinat-fun-pow.md) | 101 | `result-track:49a06a64d2ba4c2d114b88fd3560a511b08ce51324c8ae5a029382c07665ee5b` |
| 14 | `theorem` | [HasDerivWithinAt.pow](../../../../RealFunctions/PowPublic.lean/declarations/hasderivwithinat-pow-source-edition-3.md) | 105 | `result-track:decbdf14ad5bcc01b7d1cefe6d8ef15a35166692ffa78ac25bb3b3ae765dbe27` |
| 15 | `theorem` | [HasDerivAt.pow](../../../../RealFunctions/PowPublic.lean/declarations/hasderivat-pow-source-edition-3.md) | 109 | `result-track:e49aa3edf6622d1e474afbd64dc53ad56440e0a2c655c236d8e2b0346ee734bb` |
| 16 | `theorem` | [derivWithin_pow](../../../../RealFunctions/PowPublic.lean/declarations/derivwithin-pow-source-edition-2.md) | 114 | `result-track:db91ec363e42d5538287073e7c6afb9bfb821e7073519eeb9f38a018764aa384` |
| 17 | `theorem` | [deriv_pow](../../../../RealFunctions/PowPublic.lean/declarations/deriv-pow-source-edition-2.md) | 121 | `result-track:e963d0b2d5ccf56d168bb23f5757215356adf1df8adf4c7a28040b5028b29e4d` |
| 18 | `theorem` | [hasStrictDerivAt_pow](../../../../RealFunctions/PowPublic.lean/declarations/hasstrictderivat-pow.md) | 129 | `result-track:70fc07ecd8dadce54626fe720d83b4d814be2fe8a11d01412704c39cf63bb572` |
| 19 | `theorem` | [hasDerivWithinAt_pow](../../../../RealFunctions/PowPublic.lean/declarations/hasderivwithinat-pow.md) | 133 | `result-track:1d973fd2e38b55670a4c7468d5843a1a876ce6dfae32cb7fc73e29fa39d3860e` |
| 20 | `theorem` | [hasDerivAt_pow](../../../../RealFunctions/PowPublic.lean/declarations/hasderivat-pow.md) | 137 | `result-track:9e60aead00b57e801cf8f4cfd340dece47f614a1027b25bcb1bd0e05612216a2` |
| 21 | `theorem` | [derivWithin_pow_field](../../../../RealFunctions/PowPublic.lean/declarations/derivwithin-pow-field.md) | 141 | `result-track:b84e83ae685202987ee9e1f3be8e5ec01ab303adb9b253d30a5aae1d77ebdaea` |
| 22 | `theorem` | [deriv_pow_field](../../../../RealFunctions/PowPublic.lean/declarations/deriv-pow-field.md) | 145 | `result-track:cd0eba580d30ac325d80c86ea6d625c936488af4eeb97afd9f96d619e9809936` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e8d13cf41f750e4b2f4ad41ecaafc3cfc657769bf8530c0a78e63ba8a3b039a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantb2781c21c39de75badfc2a305a9f848c32329e384bb9e9f3ea220b3b41ce10ea.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Pow/Variantb2781c21c39de75badfc2a305a9f848c32329e384bb9e9f3ea220b3b41ce10ea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
