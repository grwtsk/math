# Verification target: FDeriv Comp Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9fda5a5e7208c57bfed131ef6284e05037c2d53a",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantd6916f96aa80df9b59e610ac645dd7ef46371a30538943cba017cf15d1dfa8e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/FDerivCompNamespacedPublic.lean/index.md) · [Full source](../../../../RealFunctions/FDerivCompNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9fda5a5e7208c57bfed131ef6284e05037c2d53a`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantd6916f96aa80df9b59e610ac645dd7ef46371a30538943cba017cf15d1dfa8e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantd6916f96aa80df9b59e610ac645dd7ef46371a30538943cba017cf15d1dfa8e6.lean.json)

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
| 1 | `theorem` | [HasFDerivAtFilter.comp](../../../../RealFunctions/FDerivCompNamespacedPublic.lean/declarations/hasfderivatfilter-comp.md) | 57 | `result-track:1d0c9163e3f48a1fa03844aa222c857f561f8a728874b9f59209b395036357c7` |
| 2 | `theorem` | [HasStrictFDerivAt.comp](../../../../RealFunctions/FDerivCompNamespacedPublic.lean/declarations/hasstrictfderivat-comp.md) | 78 | `result-track:38ca82fe257efbc0d3ed7ebcde2c8f9bd66a7d4d7e354c4122f871912925a222` |
| 3 | `theorem` | [HasFDerivWithinAt.comp](../../../../RealFunctions/FDerivCompNamespacedPublic.lean/declarations/hasfderivwithinat-comp.md) | 84 | `result-track:16098b4caf99723a34d39549bd7c98fc10c7952181d9f8be8a46198395a97270` |
| 4 | `theorem` | [HasFDerivAt.comp_hasFDerivWithinAt](../../../../RealFunctions/FDerivCompNamespacedPublic.lean/declarations/hasfderivat-comp-hasfderivwithinat.md) | 91 | `result-track:f5602d1efd49bf5156f2ed72859bf473aafe9e1b843b7ddc29ffd9a038d0075f` |
| 5 | `theorem` | [HasFDerivWithinAt.comp_of_tendsto](../../../../RealFunctions/FDerivCompNamespacedPublic.lean/declarations/hasfderivwithinat-comp-of-tendsto.md) | 97 | `result-track:47dbd44418c6604c91918157236500255d036e53b69eaa37debe1a530de0d209` |
| 6 | `theorem` | [HasFDerivWithinAt.comp_hasFDerivAt](../../../../RealFunctions/FDerivCompNamespacedPublic.lean/declarations/hasfderivwithinat-comp-hasfderivat.md) | 102 | `result-track:8c099fba901ea1c26a10579bc5cc5b110efac8fb5191d27d479e768a98ceec29` |
| 7 | `theorem` | [HasFDerivWithinAt.comp_hasFDerivAt_of_eq](../../../../RealFunctions/FDerivCompNamespacedPublic.lean/declarations/hasfderivwithinat-comp-hasfderivat-of-eq.md) | 108 | `result-track:131e8bdd6c42f32fd9c733169b74bdf5690a5077b2dc4078d2f749d71cb19f1d` |
| 8 | `theorem` | [HasFDerivAt.comp](../../../../RealFunctions/FDerivCompNamespacedPublic.lean/declarations/hasfderivat-comp.md) | 115 | `result-track:1609543a09660a42e1570ad01500822fdf1d71372248de11680f76bae86a5411` |
| 9 | `theorem` | [DifferentiableWithinAt.comp](../../../../RealFunctions/FDerivCompNamespacedPublic.lean/declarations/differentiablewithinat-comp.md) | 120 | `result-track:00f1bb1cf876a8a454b53275cb555725e777a04063feb474b857623efb01a07b` |
| 10 | `theorem` | [DifferentiableWithinAt.comp'](../../../../RealFunctions/FDerivCompNamespacedPublic.lean/declarations/differentiablewithinat-comp-source-edition-2.md) | 126 | `result-track:03815336836fe8c279218a3b6946c1b3dbe2f661c29c064dfd013e1ee380f46d` |
| 11 | `theorem` | [DifferentiableAt.fun_comp'](../../../../RealFunctions/FDerivCompNamespacedPublic.lean/declarations/differentiableat-fun-comp.md) | 132 | `result-track:0dc2dffb120924aae50ff739c0200953610541a887c0afc4a5bb1965a6e8379f` |
| 12 | `theorem` | [DifferentiableAt.comp](../../../../RealFunctions/FDerivCompNamespacedPublic.lean/declarations/differentiableat-comp.md) | 137 | `result-track:d7035282ea7d1c7b081daa7935ee775fcb7a09ac4f3490184e6c3244179cbc5f` |
| 13 | `theorem` | [DifferentiableAt.comp_differentiableWithinAt](../../../../RealFunctions/FDerivCompNamespacedPublic.lean/declarations/differentiableat-comp-differentiablewithinat.md) | 142 | `result-track:d5147fc8dcd29c7cb15c0f3bafecf16666632e67ed0649e350537b82440cd382` |
| 14 | `theorem` | [fderivWithin_comp](../../../../RealFunctions/FDerivCompNamespacedPublic.lean/declarations/fderivwithin-comp-source-edition-2.md) | 150 | `result-track:63f8eede4174f9b058f2ec5f3876a120bf86cdb40974fed157f958181f475ac1` |
| 15 | `theorem` | [fderivWithin_comp_of_eq](../../../../RealFunctions/FDerivCompNamespacedPublic.lean/declarations/fderivwithin-comp-of-eq.md) | 156 | `result-track:0fe46d419130a40ada34d7af9b7a2c6c09c43d7a3c4cc59f46a2fefd3e7291c1` |
| 16 | `theorem` | [fderivWithin_fderivWithin](../../../../RealFunctions/FDerivCompNamespacedPublic.lean/declarations/fderivwithin-fderivwithin.md) | 167 | `result-track:870deddd17c39eb9b83546bdbf8fcd731cb35b46b714d2f12f2c83ada96d2d32` |
| 17 | `theorem` | [fderivWithin_comp₃](../../../../RealFunctions/FDerivCompNamespacedPublic.lean/declarations/fderivwithin-comp.md) | 176 | `result-track:0c44dbe3da110e20ffb45cf79b932a90ab4149c2e598f8fc8a80bd0ba73f67a9` |
| 18 | `theorem` | [fderiv_comp](../../../../RealFunctions/FDerivCompNamespacedPublic.lean/declarations/fderiv-comp.md) | 187 | `result-track:4f98eea6639dfaae505e4c3c140d5210822c913a53c1ed407c88bc475909b852` |
| 19 | `theorem` | [fderiv_comp_fderivWithin](../../../../RealFunctions/FDerivCompNamespacedPublic.lean/declarations/fderiv-comp-fderivwithin.md) | 192 | `result-track:0b721cc83850a85569a03acf006e436ad825c127258e81496a8774e469b221ba` |
| 20 | `theorem` | [DifferentiableOn.fun_comp](../../../../RealFunctions/FDerivCompNamespacedPublic.lean/declarations/differentiableon-fun-comp.md) | 198 | `result-track:5f32db0ad09e10d7a1cc6caed75fc606d1e0fcb1590ef099d2911332d1a75281` |
| 21 | `theorem` | [DifferentiableOn.comp](../../../../RealFunctions/FDerivCompNamespacedPublic.lean/declarations/differentiableon-comp.md) | 204 | `result-track:ee7358d9d74a47761c4c6325f3ea6ced267c535c7c8f4d9be6a2b22cbe8f9c30` |
| 22 | `theorem` | [Differentiable.fun_comp](../../../../RealFunctions/FDerivCompNamespacedPublic.lean/declarations/differentiable-fun-comp.md) | 209 | `result-track:883ae3c270e8a04d45e9af3b20ccc2b686bbd478b26cd0f9f8946546a5a23a69` |
| 23 | `theorem` | [Differentiable.comp](../../../../RealFunctions/FDerivCompNamespacedPublic.lean/declarations/differentiable-comp.md) | 214 | `result-track:4e825a7bd72a45d81190aaedc7846d4e2b3e3f75157fa4b76cc904b8ff082426` |
| 24 | `theorem` | [Differentiable.comp_differentiableOn](../../../../RealFunctions/FDerivCompNamespacedPublic.lean/declarations/differentiable-comp-differentiableon.md) | 219 | `result-track:4e6946ec2ce304726344693503a1c27d37fe894efe747c436c64d9b2738e2d40` |
| 25 | `theorem` | [Differentiable.iterate](../../../../RealFunctions/FDerivCompNamespacedPublic.lean/declarations/differentiable-iterate.md) | 225 | `result-track:2c45d8a0155d8b4327890576b2ae3f8471ed14a37689f7158100d96b64009920` |
| 26 | `theorem` | [DifferentiableOn.iterate](../../../../RealFunctions/FDerivCompNamespacedPublic.lean/declarations/differentiableon-iterate.md) | 230 | `result-track:bd555979f0d09487621249b4385b60442316302c9778ded600a7acd1876346a0` |
| 27 | `theorem` | [HasFDerivAtFilter.iterate](../../../../RealFunctions/FDerivCompNamespacedPublic.lean/declarations/hasfderivatfilter-iterate.md) | 236 | `result-track:f846f0f387c5b633c770a543892a9399005320aa7fed67d041ca3f21a3cc8956` |
| 28 | `theorem` | [HasFDerivAt.iterate](../../../../RealFunctions/FDerivCompNamespacedPublic.lean/declarations/hasfderivat-iterate.md) | 246 | `result-track:6a577b0a1ab4b3bf77a03f01261764be0eb893af1ebdfd341655e3d88b912a88` |
| 29 | `theorem` | [HasFDerivWithinAt.iterate](../../../../RealFunctions/FDerivCompNamespacedPublic.lean/declarations/hasfderivwithinat-iterate.md) | 252 | `result-track:f5a52d76b094930620c011a544c81bb362cf91d0ec0543e823ea641e196657de` |
| 30 | `theorem` | [HasStrictFDerivAt.iterate](../../../../RealFunctions/FDerivCompNamespacedPublic.lean/declarations/hasstrictfderivat-iterate.md) | 259 | `result-track:58830a7a73ba96b3190e6ea9a08e9e78187f1b276f99b611bf113a1af3c5ddce` |
| 31 | `theorem` | [DifferentiableAt.iterate](../../../../RealFunctions/FDerivCompNamespacedPublic.lean/declarations/differentiableat-iterate.md) | 266 | `result-track:7550b0c90cb0af2741cf712bf86091872393b117652c2a14907767cbe88b9e2d` |
| 32 | `theorem` | [DifferentiableWithinAt.iterate](../../../../RealFunctions/FDerivCompNamespacedPublic.lean/declarations/differentiablewithinat-iterate.md) | 271 | `result-track:a271b7cc4988b1b31f3ae7a8c0ee5cb7cc7eb8adb70e6bc662e328b71c2c17c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=168aee199e8899d812ad7bb64600111836680efc2fdc899b30baa261f8e46c18 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantd6916f96aa80df9b59e610ac645dd7ef46371a30538943cba017cf15d1dfa8e6.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variantd6916f96aa80df9b59e610ac645dd7ef46371a30538943cba017cf15d1dfa8e6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
