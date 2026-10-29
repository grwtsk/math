# Verification target: Bilinear Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21c88a87f89c8b75e25d02af899f3b4bef379dac",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Varianta330473ac4f47468de89b1710e259bcebda7bb5cc1563617d0258a50993184cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/BilinearPublic.lean/index.md) · [Full source](../../../../RealFunctions/BilinearPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21c88a87f89c8b75e25d02af899f3b4bef379dac`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Varianta330473ac4f47468de89b1710e259bcebda7bb5cc1563617d0258a50993184cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Varianta330473ac4f47468de89b1710e259bcebda7bb5cc1563617d0258a50993184cb.lean.json)

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
| 1 | `theorem` | [IsBoundedBilinearMap.hasStrictFDerivAt](../../../../RealFunctions/BilinearPublic.lean/declarations/isboundedbilinearmap-hasstrictfderivat.md) | 47 | `result-track:eeefa7c5301c0bebab84fe9fa0439aac9d16fcc373919ba8d92f4f8c245482f5` |
| 2 | `theorem` | [IsBoundedBilinearMap.hasFDerivAt](../../../../RealFunctions/BilinearPublic.lean/declarations/isboundedbilinearmap-hasfderivat.md) | 73 | `result-track:8ffa6a574fdff623cec7b1cf08d8b72e9b8cae739d1c56297a1a15fffb8819ca` |
| 3 | `theorem` | [IsBoundedBilinearMap.hasFDerivWithinAt](../../../../RealFunctions/BilinearPublic.lean/declarations/isboundedbilinearmap-hasfderivwithinat.md) | 78 | `result-track:562844aaa060bfe066f11a9dc6a8b4d5fd8cef2989284095f3cf8d54f669ee61` |
| 4 | `theorem` | [IsBoundedBilinearMap.differentiableAt](../../../../RealFunctions/BilinearPublic.lean/declarations/isboundedbilinearmap-differentiableat.md) | 83 | `result-track:be33e3f86fd3cd68c4a6bc981c7d0b575b15b0981a38fa36002652fffdf03729` |
| 5 | `theorem` | [IsBoundedBilinearMap.differentiableWithinAt](../../../../RealFunctions/BilinearPublic.lean/declarations/isboundedbilinearmap-differentiablewithinat.md) | 88 | `result-track:d5419c9b6c79843b3aa1817068c9b390832d4d898ea814f91f952bfb224c0131` |
| 6 | `theorem` | [IsBoundedBilinearMap.fderiv](../../../../RealFunctions/BilinearPublic.lean/declarations/isboundedbilinearmap-fderiv.md) | 92 | `result-track:5a175e3509857045a76b3039b64d583ac89bbaf1b2b4c24880279f326296d8d2` |
| 7 | `theorem` | [IsBoundedBilinearMap.fderivWithin](../../../../RealFunctions/BilinearPublic.lean/declarations/isboundedbilinearmap-fderivwithin.md) | 96 | `result-track:21d07212b9f85d9dd4f0019ae06963267d964b57cae5baefcbebd3b5a810920e` |
| 8 | `theorem` | [IsBoundedBilinearMap.differentiable](../../../../RealFunctions/BilinearPublic.lean/declarations/isboundedbilinearmap-differentiable.md) | 102 | `result-track:8aec4e2082df7d7bc9542c01c414b4aa4cf691c9ae540dc9bb83ff077fa3af5c` |
| 9 | `theorem` | [IsBoundedBilinearMap.differentiableOn](../../../../RealFunctions/BilinearPublic.lean/declarations/isboundedbilinearmap-differentiableon.md) | 106 | `result-track:ab8935b1df0442bba75e01d13b7f6fc6bcb27161bc1b408ab055a8ac1bb97120` |
| 10 | `theorem` | [ContinuousLinearMap.hasFDerivWithinAt_of_bilinear](../../../../RealFunctions/BilinearPublic.lean/declarations/continuouslinearmap-hasfderivwithinat-of-bilinear.md) | 113 | `result-track:271b8160609cebea15530900fa67cce820c010104a5c736fd7844302afccaf22` |
| 11 | `theorem` | [ContinuousLinearMap.hasFDerivAt_of_bilinear](../../../../RealFunctions/BilinearPublic.lean/declarations/continuouslinearmap-hasfderivat-of-bilinear.md) | 122 | `result-track:185b3a9d513009c587c65add5a4c1193c04d07b16c77818431bcb5563808eff5` |
| 12 | `theorem` | [ContinuousLinearMap.hasStrictFDerivAt_of_bilinear](../../../../RealFunctions/BilinearPublic.lean/declarations/continuouslinearmap-hasstrictfderivat-of-bilinear.md) | 129 | `result-track:ce142ebd552e6569d7154175bdb6419213c71e857a506ab36e09fee45304faea` |
| 13 | `theorem` | [ContinuousLinearMap.fderivWithin_of_bilinear](../../../../RealFunctions/BilinearPublic.lean/declarations/continuouslinearmap-fderivwithin-of-bilinear.md) | 136 | `result-track:b248cc9eb43821ee677b0888d6e7e3f6efb01598a9641697aa277ac21a2afc25` |
| 14 | `theorem` | [ContinuousLinearMap.fderiv_of_bilinear](../../../../RealFunctions/BilinearPublic.lean/declarations/continuouslinearmap-fderiv-of-bilinear.md) | 143 | `result-track:935aec20ae5d4c2f0fc78249dcd79fb513bd037293d5b458b86df681c6231110` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=769681f012190bbab13f3a6281b41375851c47d4a03a07cc3fd31572aa09f7f5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Varianta330473ac4f47468de89b1710e259bcebda7bb5cc1563617d0258a50993184cb.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Varianta330473ac4f47468de89b1710e259bcebda7bb5cc1563617d0258a50993184cb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
