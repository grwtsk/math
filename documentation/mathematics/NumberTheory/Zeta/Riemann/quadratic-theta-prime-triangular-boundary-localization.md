# Corrected triangular boundary localization

The previous `TriangularBoundaryApproximationClaim` was too weak: it merely
asserted the existence of a nonnegative number at most (X/N).  The value
zero satisfies that proposition without any reference to the smoothing kernel.
The new source proves this vacuity explicitly.

The corrected interface names the actual approximation error and requires it to
be dominated by logarithmic prime mass on a concrete boundary interval.

The arithmetic part is now closed.  For any integer interval ((A,B]) below
(4X) with length at most (H),

[
oxed{
sum_{A<ple B}log p
le
Hlog(4X).
}
]

Thus if a triangular smoothing construction localizes its approximation error
to a boundary interval of length

[
Hle leftlceil X/Nightceil,
]

then automatically

[
|mathrm{error}|
le
leftlceil X/Nightceillog(4X).
]

The new nonvacuous structure
`TriangularBoundaryLocalizationData X N m` contains the actual error and its
supporting boundary interval.  The open theorem
`TriangularBoundaryLocalizationClaim` must construct this data from the
triangular kernel.

So the elementary boundary counting is no longer open.  The remaining analytic
obligation is kernel localization itself.

Status:
`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
BOUNDARY_COUNTING_PROVED / TRIANGULAR_LOCALIZATION_OPEN`.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b9ae353db78fea342d4e850f3f5dd47ed012b5bb3775394853fe51328e00c7e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
