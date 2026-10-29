# Verification target: Derive Reg Exp Generator

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f00a5ca7ab670fad523461e0d5e94fa748e331b4",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeriveRegExpGenerator/Variantd10f06392e689e2c273e6ba16969e204e0305e2b7eb89a2b9709cdfd918b1eae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/DeriveRegExpGenerator.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/DeriveRegExpGenerator.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f00a5ca7ab670fad523461e0d5e94fa748e331b4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeriveRegExpGenerator/Variantd10f06392e689e2c273e6ba16969e204e0305e2b7eb89a2b9709cdfd918b1eae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeriveRegExpGenerator/Variantd10f06392e689e2c273e6ba16969e204e0305e2b7eb89a2b9709cdfd918b1eae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Plausible.Attr` — import line 1; external provider; requires a separately pinned dependency.
- `Plausible.Arbitrary` — import line 2; external provider; requires a separately pinned dependency.
- `Plausible.DeriveArbitrary` — import line 3; external provider; requires a separately pinned dependency.
- `Plausible.Testable` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [RegExp](../../../../../ComputerScience/AlgorithmsInComputerScience/DeriveRegExpGenerator.lean/declarations/regexp.md) | 15 | `declaration-track:7c05b519b6508b5caf40a5694a9c33ca28c26be3e627b54f34421ae02cbc3f43` |
| 2 | `def` | [neverMatchesAnyString](../../../../../ComputerScience/AlgorithmsInComputerScience/DeriveRegExpGenerator.lean/declarations/nevermatchesanystring.md) | 95 | `declaration-track:2e7d80e9e8b17571550b520316ca804721d1ac8d3ed472d39f40e30bc28ccf1b` |
| 3 | `def` | [shrinkRegExp](../../../../../ComputerScience/AlgorithmsInComputerScience/DeriveRegExpGenerator.lean/declarations/shrinkregexp.md) | 103 | `declaration-track:18903b1836c15d8114e0c1d28a11d54dad46c1e42c0b5536740285ced5460c1b` |
| 4 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/DeriveRegExpGenerator.lean/declarations/instance.md) | 111 | `declaration-track:2c6e932775f01a6abeee0077e8f743c6108a8417fd0cae726f16b4ace0970bec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5a88a40b452ff0ab903e903e040714bfe275a9a69190d3fd0f9f1e2d5dcf4182 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeriveRegExpGenerator/Variantd10f06392e689e2c273e6ba16969e204e0305e2b7eb89a2b9709cdfd918b1eae.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeriveRegExpGenerator/Variantd10f06392e689e2c273e6ba16969e204e0305e2b7eb89a2b9709cdfd918b1eae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
