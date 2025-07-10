package Model;

public class Payment {

	int paymentId;
	
	double packagePrice;
	
	int cusomerId;
	
	String timestamp;
	
	double tax;
	
	double total;

	
	public int getPaymentId() {
		return paymentId;
	}

	public void setPaymentId(int paymentId) {
		this.paymentId = paymentId;
	}

	public double getPackagePrice() {
		return packagePrice;
	}

	public void setPackagePrice(double packagePrice) {
		this.packagePrice = packagePrice;
	}

	public int getCusomerId() {
		return cusomerId;
	}

	public void setCusomerId(int cusomerId) {
		this.cusomerId = cusomerId;
	}

	public String getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(String timestamp) {
		this.timestamp = timestamp;
	}

	public double getTax() {
		return tax;
	}

	public void setTax(double tax) {
		this.tax = tax;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}
	
	
	
	
}
