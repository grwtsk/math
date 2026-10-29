# Verification target: Core Affine Coefficient

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7fc2cf6dbdff4e97bbf2bb039631341973bc7338",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant404671274fe14be0d379dcd5ebef6e06b406a96143665d1d2e76e1a5f3fce355.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreAffineCoefficient.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreAffineCoefficient.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7fc2cf6dbdff4e97bbf2bb039631341973bc7338`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant404671274fe14be0d379dcd5ebef6e06b406a96143665d1d2e76e1a5f3fce355.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant404671274fe14be0d379dcd5ebef6e06b406a96143665d1d2e76e1a5f3fce355.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.AffineTopos.Site` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AffineCoefficient](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreAffineCoefficient.lean/declarations/affinecoefficient.md) | 7 | `declaration-track:2384559ab7fc1af66db507cad394591f89eb216e50ef8f73a4c366e9fcea605c` |
| 2 | `structure` | [AffineLocalData](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreAffineCoefficient.lean/declarations/affinelocaldata.md) | 11 | `declaration-track:56079a83919ea708d9427ea25a63932a68a60e1fc2d1634f2e613a7afe4fc5bc` |
| 3 | `structure` | [ReductionPayload](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreAffineCoefficient.lean/declarations/reductionpayload.md) | 16 | `declaration-track:4db7a34171ca04e6d526a55be6e2cb07f393b57b5327b173fd9d6870c586d037` |
| 4 | `structure` | [PascalReduction](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreAffineCoefficient.lean/declarations/pascalreduction.md) | 22 | `declaration-track:1b4448b58b8bcb28caec1404a08e1484e9b3eced73d69d1ed9ec2826ae8a43aa` |
| 5 | `inductive` | [GeneralizedPascalTree](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreAffineCoefficient.lean/declarations/generalizedpascaltree.md) | 28 | `declaration-track:56eecde69ae0dbdb4cdb38465c9a50da490f7592a71d046f717ba60453c2fc9f` |
| 6 | `def` | [combineReductions](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreAffineCoefficient.lean/declarations/combinereductions.md) | 32 | `declaration-track:c38cf900be93b019d73ad2f8f512d3cdba02d291cbd48ef3e20639b57845a0e9` |
| 7 | `def` | [leafLocalData](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreAffineCoefficient.lean/declarations/leaflocaldata.md) | 45 | `declaration-track:0d6712a1ff398bd2e7fe86890616bdf7461e6e1b8dc0d6de69fb008f0410e23a` |
| 8 | `def` | [reduce](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreAffineCoefficient.lean/declarations/reduce.md) | 50 | `declaration-track:dbe6f6288791e0d66eb00176875ebec35a8c716d5982c74a6d3c21f5bd448b24` |
| 9 | `theorem` | [pascalTree_reducer_wellFounded](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreAffineCoefficient.lean/declarations/pascaltree-reducer-wellfounded.md) | 60 | `result-track:4a8ffd22233e87402b37bd59741aab70ac33fa0212ad3aeb989b43ee2e839841` |
| 10 | `theorem` | [pascalTree_reducer_affine_local](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreAffineCoefficient.lean/declarations/pascaltree-reducer-affine-local.md) | 65 | `result-track:62116463b78ac6f57c322414448a64004062655a8dcb9ef1c21874a19e0db33f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b558425121d564d1029e34b64d8250a603b8a905219788006eaad7aa419bcef9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant404671274fe14be0d379dcd5ebef6e06b406a96143665d1d2e76e1a5f3fce355.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant404671274fe14be0d379dcd5ebef6e06b406a96143665d1d2e76e1a5f3fce355.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
