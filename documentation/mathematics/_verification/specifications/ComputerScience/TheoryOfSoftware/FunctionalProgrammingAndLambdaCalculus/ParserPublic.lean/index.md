# Verification target: Parser Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f94031dde7236e6bc30c9f8a1ad9fda83c34e1b9",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant3899184aa8ca9bef540a1b30605e4addfde6c8b98c34cd7f544f8a15824c5934.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f94031dde7236e6bc30c9f8a1ad9fda83c34e1b9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant3899184aa8ca9bef540a1b30605e4addfde6c8b98c34cd7f544f8a15824c5934.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant3899184aa8ca9bef540a1b30605e4addfde6c8b98c34cd7f544f8a15824c5934.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.While` — import line 9; external provider; requires a separately pinned dependency.
- `Init.Data.String.Search` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tryOpt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublic.lean/declarations/tryopt.md) | 43 | `declaration-track:3b837220772946e54221ee7499323340e02bef8f7f4442c9a581eb923a31e673` |
| 2 | `def` | [peekIs](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublic.lean/declarations/peekis.md) | 47 | `declaration-track:e3c4567a576424ec2a87601d04bfbfdd7fda9b57928eac60a1ceadb62dabc000` |
| 3 | `def` | [parseScheme](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublic.lean/declarations/parsescheme.md) | 51 | `declaration-track:9b3f4c9b764e732b87236ec0db181c312f765b79220826f06614cb1e4552fe23` |
| 4 | `def` | [parsePortNumber](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublic.lean/declarations/parseportnumber.md) | 70 | `declaration-track:ab88b5f79c49a9675a755c621ae2020065a110f28fb35a1c584845fc8200bd99` |
| 5 | `def` | [parseUserInfo](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublic.lean/declarations/parseuserinfo.md) | 84 | `declaration-track:251e9cd4c703e760396c91493bdcc3b4ea575809aa3604fba7a8281a993e7b74` |
| 6 | `def` | [parseIPv6](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublic.lean/declarations/parseipv6.md) | 113 | `declaration-track:5dd3db71859691bec6c649cea6f0f19f5d5bdfdfdec165a8628c29a2133923c4` |
| 7 | `def` | [parseIPv4](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublic.lean/declarations/parseipv4.md) | 129 | `declaration-track:cf53a93d44c07a82b059a9f41c80e483c618b58cf827286e3e0e584e8062e054` |
| 8 | `def` | [parseHost](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublic.lean/declarations/parsehost.md) | 143 | `declaration-track:b8346686b42f2fc77705e4a255bee7f95bf8d19106ed5088e5c043bab5172b32` |
| 9 | `def` | [parseAuthority](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublic.lean/declarations/parseauthority.md) | 164 | `declaration-track:b7f1388617db9597400d49e7c4749a4b0aab54457efe8e240cfff02e9208d22a` |
| 10 | `def` | [parseSegment](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublic.lean/declarations/parsesegment.md) | 189 | `declaration-track:8040405a185a94d4b64e07011912cf3dd1ca83274e955125fe6f0a8a6e7fafe4` |
| 11 | `def` | [parsePath](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublic.lean/declarations/parsepath.md) | 209 | `declaration-track:9d814048e7821d071fa4f202747bffc01bda363de09c3a342279407aae1e4a17` |
| 12 | `def` | [parseQuery](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublic.lean/declarations/parsequery.md) | 273 | `declaration-track:196c05c8c2399e8baa440cf97f361d40d2b91e6815c6c3c342e28c50f228acbf` |
| 13 | `def` | [parseFragment](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublic.lean/declarations/parsefragment.md) | 305 | `declaration-track:2b3b25fad713d46e004ee5ada2ac6fc0c5afc421e9ac45823d7cebdeab2d8f70` |
| 14 | `def` | [parseHierPart](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublic.lean/declarations/parsehierpart.md) | 314 | `declaration-track:becc6afe953315003ebfd2a05d160f8dbee668a085e553f70520427fd16665d4` |
| 15 | `def` | [parseURI](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublic.lean/declarations/parseuri.md) | 331 | `declaration-track:c6d843bb70c46f436135733e15e4472c50163a6656cd3ea4a9b192a8c2ec89d1` |
| 16 | `def` | [parseRequestTarget](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublic.lean/declarations/parserequesttarget.md) | 350 | `declaration-track:3126910ca4c52db2e82f183e53738f33943ab7653a937b6314c077142a080388` |
| 17 | `def` | [parseHostHeader](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublic.lean/declarations/parsehostheader.md) | 409 | `declaration-track:6572a4d488ab0a023dbc9004171931eedd8d2df9e644ff4d54ebcfdb3c647478` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=65b0a3f3cf841bbe2624e0dc147a27223c1b86a4ef34f23f84e2e981661632dd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant3899184aa8ca9bef540a1b30605e4addfde6c8b98c34cd7f544f8a15824c5934.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parser/Variant3899184aa8ca9bef540a1b30605e4addfde6c8b98c34cd7f544f8a15824c5934.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
