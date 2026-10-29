# Verification target: Syntax

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc84e0ce5c16c9c0971667447058e6d8dd9d4d7e",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Syntax/Variant08b6956ef9667ace520e29d73ad577cdbbbf452bc68185740c5c1f54bea8a5a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/Syntax.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/Syntax.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc84e0ce5c16c9c0971667447058e6d8dd9d4d7e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Syntax/Variant08b6956ef9667ace520e29d73ad577cdbbbf452bc68185740c5c1f54bea8a5a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Syntax/Variant08b6956ef9667ace520e29d73ad577cdbbbf452bc68185740c5c1f54bea8a5a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.Snapshot` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SyntaxNode](../../../../../ComputerScience/AlgorithmsInComputerScience/Syntax.lean/declarations/syntaxnode.md) | 21 | `declaration-track:ab237b1845a8c336600ce3ff617c623f6cafae5637b112f47d96ca95600f451a` |
| 2 | `structure` | [SyntaxCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/Syntax.lean/declarations/syntaxcertificate.md) | 43 | `declaration-track:d3744a3dda576cb6e82626731f2fec8bebcea9cc0f909ec85562f9a4272b0a7d` |
| 3 | `def` | [nodeAt](../../../../../ComputerScience/AlgorithmsInComputerScience/Syntax.lean/declarations/nodeat.md) | 53 | `declaration-track:a7251963760101350b358308813815b7591fc16036a4913c5e5536256b0cfcda` |
| 4 | `def` | [constructorAt](../../../../../ComputerScience/AlgorithmsInComputerScience/Syntax.lean/declarations/constructorat.md) | 57 | `declaration-track:35e438812bf88b03f7606e149655e6901b698c0c67be43dfbd8335ccd4905c30` |
| 5 | `def` | [expandNode](../../../../../ComputerScience/AlgorithmsInComputerScience/Syntax.lean/declarations/expandnode.md) | 61 | `declaration-track:925ec519f2f1294be4f6e9353372b9ad77b78e67913e0071efe839508c9e8ac8` |
| 6 | `def` | [sourceSlice](../../../../../ComputerScience/AlgorithmsInComputerScience/Syntax.lean/declarations/sourceslice.md) | 69 | `declaration-track:44e9469c027fd914035f935561ffadace1e1034398a1fa9ca7cee5cf8c9ebfb5` |
| 7 | `def` | [walkSurface](../../../../../ComputerScience/AlgorithmsInComputerScience/Syntax.lean/declarations/walksurface.md) | 73 | `declaration-track:8462a72337ba1d49ab2ed7a225734ec0d3abc04ebf20dd787d61573053b21303` |
| 8 | `def` | [reachableNodes](../../../../../ComputerScience/AlgorithmsInComputerScience/Syntax.lean/declarations/reachablenodes.md) | 93 | `declaration-track:65cb91a2e3b85bb143effeeb41028ef4f5d5574bf9a8f8991557a5d1e52e1762` |
| 9 | `def` | [NodeValid](../../../../../ComputerScience/AlgorithmsInComputerScience/Syntax.lean/declarations/nodevalid.md) | 99 | `declaration-track:4abfc4718c44099aade4dc1daac3c7505be27bb550d1097ae984ed27e8365754` |
| 10 | `def` | [syntaxWork](../../../../../ComputerScience/AlgorithmsInComputerScience/Syntax.lean/declarations/syntaxwork.md) | 124 | `declaration-track:118605efdafd5421db4393c37c6571a8d671519c8377ceafcf0f4df3d1f3f093` |
| 11 | `def` | [SyntaxValid](../../../../../ComputerScience/AlgorithmsInComputerScience/Syntax.lean/declarations/syntaxvalid.md) | 130 | `declaration-track:852c9efeb8c17ef5a80cf7393cb6da6488cc3ea63b16a74543a87816205b2cb7` |
| 12 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/Syntax.lean/declarations/instance.md) | 151 | `declaration-track:1d191638f7d75188f079299075c52cdb00328a3f91739074af9e646bf50c2c69` |
| 13 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/Syntax.lean/declarations/instance-source-edition-2.md) | 156 | `declaration-track:5b0a2f054beca8ff3bf440b8b9398e42edd59ea7b97f8a188ff462a6dcfcd512` |
| 14 | `def` | [checkSyntax](../../../../../ComputerScience/AlgorithmsInComputerScience/Syntax.lean/declarations/checksyntax.md) | 162 | `declaration-track:896cea8f5da052656a6546ca82c58e68ba03604d012ae7f9c5943e57c1babb07` |
| 15 | `theorem` | [checkSyntax_eq_true_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/Syntax.lean/declarations/checksyntax-eq-true-iff.md) | 165 | `result-track:dcba1d4d16b90a822dd03da80260b89f12b5ca49f856f8d8974d76e62c4d2596` |
| 16 | `theorem` | [checkSyntax_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/Syntax.lean/declarations/checksyntax-sound.md) | 170 | `result-track:4dd7b29a451cab6e71842677fa674bc98fa82e943f5efc695f0532c7a95a237f` |
| 17 | `structure` | [CheckedSyntax](../../../../../ComputerScience/AlgorithmsInComputerScience/Syntax.lean/declarations/checkedsyntax.md) | 175 | `declaration-track:a6c4965e23fd0e889ae5848b654e14b34421372a65eb8b4a9d15f8774b1b9b52` |
| 18 | `def` | [admitSyntax](../../../../../ComputerScience/AlgorithmsInComputerScience/Syntax.lean/declarations/admitsyntax.md) | 182 | `declaration-track:f7afdcf399e0b24425a88b7d5c762dd20b2bada513d77bcde9921d115173ff6a` |
| 19 | `theorem` | [checkedSyntax_snapshot](../../../../../ComputerScience/AlgorithmsInComputerScience/Syntax.lean/declarations/checkedsyntax-snapshot.md) | 187 | `result-track:a7f2ac74218f5f66a420862e98b6a3228d419c8469563769f571334b428ba116` |
| 20 | `theorem` | [checkedSyntax_unique_ownership](../../../../../ComputerScience/AlgorithmsInComputerScience/Syntax.lean/declarations/checkedsyntax-unique-ownership.md) | 192 | `result-track:338c9a1d6d1645808bd7985e8aaeeae9bc8a0a1ca3ee34f292a753f010b3129f` |
| 21 | `theorem` | [checkedSyntax_exact_root_yield](../../../../../ComputerScience/AlgorithmsInComputerScience/Syntax.lean/declarations/checkedsyntax-exact-root-yield.md) | 199 | `result-track:4fe036343afa802a41f78aac3baa6f46b332d75503b3d71dd2e2f0f1b9a48d1f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6adf0d3ce3a1479b8600433e28cb0e4bcabad699e3d583d1263f86043b37bf32 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Syntax/Variant08b6956ef9667ace520e29d73ad577cdbbbf452bc68185740c5c1f54bea8a5a1.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Syntax/Variant08b6956ef9667ace520e29d73ad577cdbbbf452bc68185740c5c1f54bea8a5a1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
