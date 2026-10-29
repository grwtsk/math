# Truncated DFT smoothing window

For a Fourier cutoff N_X ~ X^beta, the low-mode Parseval/Cauchy--Schwarz contribution has schematic power exponent

L(beta) = (1+beta)/2.

A smoothed boundary of physical width X/N_X has schematic power exponent

B(beta) = 1-beta

up to logarithmic factors.

The source proves:

L(beta) <= 3/4 iff beta <= 1/2,

B(beta) <= 3/4 iff beta >= 1/4,

so both costs fit the first nonlinear target exactly for

1/4 <= beta <= 1/2.

The balanced choice beta=1/3 gives both schematic powers 2/3.

This establishes a nonempty exponent window for a smoothed DFT proof. It does not construct a trigonometric majorant/minorant or prove the source-faithful reconstruction. The missing interface is PrimeDFTSmoothingReadoutAt beta rho, converting the existing prime-only Fourier energy into the finite partial-prime discrepancy target.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / FOURIER_SMOOTHING_EXPONENT_WINDOW_TYPED / SMOOTHED_DFT_RECONSTRUCTION_OPEN.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1cb7887035f82e39682db615b61e2948cde862349dc9de3f738df25a606dfd8e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
