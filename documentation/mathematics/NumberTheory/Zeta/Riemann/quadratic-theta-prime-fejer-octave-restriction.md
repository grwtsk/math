# Fejer octave-to-cycle L1 restriction

The arithmetic/cyclic indexing gap is now source-closed.

The arithmetic L1 error over the octave

\[
\sum_{2X<n\le4X}
|1_{(2X,m]}(n)-W_{X,N,m}(n)|
\]

is reindexed through the previously constructed endpoint-aware equivalence
between arithmetic octave points and their residues in
\(\mathbf Z/(4X)\mathbf Z\).

Using the already source-proved sharp-indicator and smoothed-prefix
identifications, this becomes exactly the cyclic error summed over the octave
residue subtype.

Every cyclic error summand is nonnegative, so the octave subtype sum is bounded
by the full cyclic group sum:

\[
\boxed{
E_{\rm octave}(X,N,m)
\le
E_{\rm cyc}(X,N,m).
}
\]

This discharges OctaveL1LeCyclicL1Claim.

Status:
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
OCTAVE_L1_REINDEXING_SOURCE_WRITTEN /
OCTAVE_SUBTYPE_TO_FULL_CYCLE_SOURCE_WRITTEN /
OCTAVE_L1_LE_CYCLIC_L1_SOURCE_PROVED.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2e7f3be65e09442a5d39c718a5e99a48519c491a1ba7564528de4a513bb8aa4b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
