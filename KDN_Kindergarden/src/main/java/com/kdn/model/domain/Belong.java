package com.kdn.model.domain;

public class Belong {
	private int b_o_id;
    private int b_k_id;
	
    public Belong() {}

	public Belong(int b_o_id, int b_k_id) {
		super();
		this.b_o_id = b_o_id;
		this.b_k_id = b_k_id;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Belong [b_o_id=").append(b_o_id).append(", b_k_id=")
				.append(b_k_id).append("]");
		return builder.toString();
	}

	public int getB_o_id() {
		return b_o_id;
	}

	public void setB_o_id(int b_o_id) {
		this.b_o_id = b_o_id;
	}

	public int getB_k_id() {
		return b_k_id;
	}

	public void setB_k_id(int b_k_id) {
		this.b_k_id = b_k_id;
	}
    
    
}
