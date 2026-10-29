# Verification target: Sigma Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e17675861c1fcd50b0b1f0f0d87982968616a1ba",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Sigma/Variantec6b471e44578c8b2fc34a7d3b1d0ff0a2355893529f37365bf23fcdf01a8be7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/SigmaPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/SigmaPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e17675861c1fcd50b0b1f0f0d87982968616a1ba`.

Source path: `GRWTSK/Algebra/GroupTheory/Sigma/Variantec6b471e44578c8b2fc34a7d3b1d0ff0a2355893529f37365bf23fcdf01a8be7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Sigma/Variantec6b471e44578c8b2fc34a7d3b1d0ff0a2355893529f37365bf23fcdf01a8be7.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SigmaPublic.lean/declarations/instance-source-edition-5.md) | 38 | `declaration-track:d4ec1cb372fff984998d114749a90fef1b376a9a2f7283af92b0409f299e940d` |
| 2 | `theorem` | [smul_def](../../../../GroupTheoryAndGeneralizations/SigmaPublic.lean/declarations/smul-def.md) | 42 | `result-track:0477383ed72cf01d189cd0905508b31928ce4690ae35dfbd9d7f08142d83496c` |
| 3 | `theorem` | [smul_mk](../../../../GroupTheoryAndGeneralizations/SigmaPublic.lean/declarations/smul-mk.md) | 46 | `result-track:7014bf44059ef98e73186716dcbeb277e0d6c10d2e7abc7fea5c82baa3232f47` |
| 4 | `instance` | [instIsScalarTowerOfSMul](../../../../GroupTheoryAndGeneralizations/SigmaPublic.lean/declarations/instisscalartowerofsmul.md) | 50 | `declaration-track:01d9993866f6206d83fdb1854966a4d25d87d192a76ea3512cef6b9222835d08` |
| 5 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SigmaPublic.lean/declarations/instance-source-edition-3.md) | 57 | `declaration-track:a8de89df7505d26a7ebe30e751f2f9547aa6dab5fa440a9ecf0ade8ebc060afb` |
| 6 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SigmaPublic.lean/declarations/instance-source-edition-4.md) | 63 | `declaration-track:af8e00d17ff0b601370d3486a39ba8baae0b1cd0d27a923df926773264941bee` |
| 7 | `theorem` | [FaithfulSMul'](../../../../GroupTheoryAndGeneralizations/SigmaPublic.lean/declarations/faithfulsmul.md) | 70 | `result-track:510b774382586174c9b65d9f86e00f8ae4fb64a349551fd5bb3b35e4b380b09d` |
| 8 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SigmaPublic.lean/declarations/instance.md) | 74 | `declaration-track:11f3ac008239cf19a12cea8e799bdf49ca6c6d6dbb565676672d6531caca2536` |
| 9 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/SigmaPublic.lean/declarations/instance-source-edition-2.md) | 80 | `declaration-track:615cc2b3d50816bc4bce2adc59a5f0289974d9a84f632bcca306b142f839e2b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=592d9a3a84919da466dcb5bc6f5fdb35bacaba7dfa08b5d86695fecf0463caaa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Sigma/Variantec6b471e44578c8b2fc34a7d3b1d0ff0a2355893529f37365bf23fcdf01a8be7.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Sigma/Variantec6b471e44578c8b2fc34a7d3b1d0ff0a2355893529f37365bf23fcdf01a8be7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
